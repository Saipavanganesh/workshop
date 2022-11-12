heads=0;
tails=0;

declare -a arr_heads;
declare -a arr_tails;

for ((i=0;i<=20;i++))
do
	flip=$(($RANDOM%2));
	if [ $flip -eq 0 ]
	then
		arr_heads[$heads]="Heads";
		heads=$(($heads+1));
		
	else
		arr_tails[$tails]="Tails";
		tails=$(($tails+1));
	fi
done

echo ${arr_heads[@]};
echo ${arr_tails[@]};

echo "Count of heads is $heads and count of tails is $tails";

if [ $heads -gt $tails ]
then
	echo "Heads won by $(($heads-$tails)) times";
else
	echo "Tails won by $(($tails-$heads)) times";
fi
