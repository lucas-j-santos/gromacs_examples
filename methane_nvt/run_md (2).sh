source /usr/local/gromacs/bin/GMXRC
gmx grompp -f common/minim.mdp -c common/box.gro -p common/box.top -o minim.tpr -maxwarn 2
gmx mdrun -v -deffnm minim
gmx grompp -f common/nvt.mdp -c minim.gro -p common/box.top -o nvt.tpr -maxwarn 2
gmx mdrun -v -deffnm nvt
gmx energy -f nvt.edr -o energy.xvg
gmx energy -f nvt.edr -o temperature.xvg
gmx energy -f nvt.edr -o pressure.xvg
