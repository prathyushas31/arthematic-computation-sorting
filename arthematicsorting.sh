echo "Welcome to arthmetic operations"
read -p "Enter number 1:" a
read -p "Enter number 2:" b
read -p "Enter number 3:" c
computation1=$(( $a+$b*$c ))
echo "first computation is:" $computation1
computation2=$(( $a*$b+$c ))
echo "second Computation is:"$computation2
computation3=$(( $c+$a/$b ))
echo "third computation is:"$computation3
computation4=$(( $a%$b+$c ))
echo "Fourth Computation is:"$computation4
declare -A computations
computation[1]=$computation1
computation[2]=$computation2
computation[3]=$computation3
computation[4]=$computation4

echo "dictionary values are :" ${computation[@]}
variable=${computation[@]}
for values in $variable
do
   array[count]=$values
   count=$(( $count+1 ))
done
echo "array values are :"${array[@]}
ascendingsort=`echo ${array[@]} | awk 'BEGIN{RS=" ";}{print $1}' | sort -n`
counter1=0
for value in $ascendingsort
do
arrayofascending[(( counter1++))]="$value"
done
echo "sorted array in ascending order are :" ${arrayofascending[@]}


