#!/bin/bash

#create a file called a.txt that contain varibles (a to z) and save the file in desktop
#can only calculate up 9 numbers, above that some error in the loop casue the loop  








sum=0

echo "enter total number"
read n

 echo "enter no : "
for ((i=1; i<=$n; i++))
 do 
	#echo "enter no $i : " 
	for j in $(cat /home/user/Desktop/a.txt|head -n $i|tail -n 1); do read $j
       
done 
done



for ((i=1; i<=$n; i++)) 
do
for j in $(cat /home/user/Desktop/a.txt|head -n $i|tail -n 1); do 
	sum=$[$sum+$[$j]]
done
done

echo "THE SUM OF ALL THE NUMBER IS: $sum"