source /usr/local/gromacs/bin/GMXRC
gmx grompp -f common/minim.mdp -c common/box.gro -p common/box.top -o minim.tpr -maxwarn 2
gmx mdrun -v -deffnm minim
gmx grompp -f common/npt.mdp -c minim.gro -p common/box.top -o npt.tpr -maxwarn 2
gmx mdrun -v -deffnm npt
gmx energy -f npt.edr -o temperature.xvg
gmx energy -f npt.edr -o pressure.xvg
gmx energy -f npt.edr -o density.xvg
