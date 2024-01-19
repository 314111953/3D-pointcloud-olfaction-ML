a=$(ls *.pdb|cut -d \. -f1)
for k in $a
do
a=$(grep HETATM $k.pdb|tail -1|awk '{print $2}')
grep HETATM $k.pdb > het
grep CONECT $k.pdb > con
for i in {1..1000}
do
b=$(($i*$a))
head -$b het|tail -$a>$k"conf_"$i.pdb
tail -$a con>>$k"conf_"$i.pdb
done
done
