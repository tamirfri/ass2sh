echo B.
for i in $(seq 5)
  do echo interation number $i
done

echo K.
line='#'
for _ in $(seq 5)
do
  echo $line
  line=$line'#'
done

echo L.
half='#  '
while [ $half ]
do
  echo "$half"' '"$(rev <<< $half)"
  half=' '"${half%?}"
done
half='  #'
echo ' '"$half"
while [ $half ]
do
  echo "$half"' '"$(rev <<< $half)"
  half="${half#?}"' '
done

echo M.
read -p 'Please enter a number: ' input
sum=0
while [ $input ]
do
  digit=$(cut --characters=1 <<< $input)
  sum=$(($sum + $digit))
  input=${input#?}
done
echo $sum