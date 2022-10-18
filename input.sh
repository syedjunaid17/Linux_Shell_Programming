 #!/bin/bash

echo -n "enter your name: "
read NAME
echo -n "enter your age: "
read AGE
echo -n "enter your department:"
read DEP
echo "you have entered the following: "
echo "NAME:            $NAME"
echo "AGE:             $AGE"
echo "DEP:             $DEP"

CHECK=0 
while [ $CHECK -eq 0 ]
do


echo -n "is that correct? [y/n] "
read ANSWER

case "$ANSWER" in
        "y"|"Y" )
         echo "NAME:          $NAME" >> empl.txt
         echo "AGE:           $AGE"  >> empl.txt
         echo "DEPARTMENT:    $DEP"  >> empl.txt
         echo "=======================" >> empl.txt
         echo "your data were saved into employee file"
         CHECK=1
         ;;
     


          N|n )
          echo "nothing was saved, run the script again if you want to add data to f>"
          CHECK=1
          ;;
       * )
         echo "wrong answer provided"
         ;;
esac
done
