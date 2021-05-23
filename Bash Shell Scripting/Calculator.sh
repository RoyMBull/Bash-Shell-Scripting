
#Calculator
#Case statements involved

Num1=0
Operator="Overwrite"
Num2=0
Total=0


function Calculator
{
RUNIF=0
while [ RUNIF != 1 ]
do
	
	echo Enter numbers for calculations
	read Num1
	read Operator
	read Num2
	
case $Operator in 
	"+") Total=$(($Num1+$Num2))
		echo $Total;;
	
	"-") Total=$(($Num1-$Num2))
		echo $Total;;
	
	"/") Total=$(($Num1/$Num2))
		echo $Total;;
	
	"*") Total=$(($Num1*$Num2))
		echo $Total;;

esac 
done
 
read -p "Hit Enter"
}

Calculator
