source /usr/local/gromacs/bin/GMXRC

gmx grompp -f common/minim.mdp -c common/box.gro -p common/box.top -o minim -maxwarn 2
gmx mdrun -v -deffnm minim
gmx grompp -f common/nve.mdp -c minim.gro -p common/box.top -o nve -maxwarn 2
gmx mdrun -v -deffnm nve
gmx energy -f nve.edr -o energy.xvg
gmx energy -f nve.edr -o temperature.xvg
gmx energy -f nve.edr -o pressure.xvg