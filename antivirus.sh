#! /bin/bash

allscan () {
clear
echo "1: Show Hidden Folder" 
echo "2: Show Hidden Bash File"
echo "3: Go Back "
echo "4: Exit"

 read -N 1 -t 50 -p "                                       Choose Your Choice:" allscan

echo ""
echo " Your Choice: $allscan "

if [ $allscan == 1 ]
then
   clear
   echo "List Of Hidden Folders:"
   ls -ld ~/.[^.]* 
   
   ##ls -l ~/.??* 

elif [ $allscan == 2 ]
then
   clear
   echo "Show Hidden Bash File"
   find /home/samson/ -iname "*.sh"
elif [ $allscan == 3 ]
then
  clear
  main

else
   echo "Exit"
fi

#find /home/samson/Documents/cipherme/ -type f -iname ".*" -ls

}  # end of my all scan


specificscan () {
clear


read -t 50 -p "Enter specific path You went to scan:" dir


clear

echo "you choosed file is $dir"

echo "1: Show Hidden Folder" 
echo "2: Show Hidden Bash File"
echo "3: Go Back "
echo "4: Exit"

 read -N 1 -t 50 -p "                                       Choose Your Choice:" allscan

echo ""
echo " Your Choice: $allscan "

if [ $allscan == 1 ]
then
   clear
   echo "List Of Hidden Folders:"
   ls -ld ~/.[^.]* 
   
   ##ls -l ~/.??* 

elif [ $allscan == 2 ]
then
   clear
   echo "Show Hidden Bash File"
   find /home/$dir/ -iname "*.sh"
elif [ $allscan == 3 ]
then
  clear
  main

else
   echo "Exit"
fi



#find /home/samson/Documents/cipherme/ -type f -iname ".*" -ls


}  # end of my all scan




echo "******************************************************************************************************"
echo "$(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami)"

echo " "

main(){  

echo "1: All Scan !it takes time " 
echo "2: Specific directory to scan"
echo "3: Detect The File "
echo "choose your choose:"

 read -N 1 -t 50 -p "                                       Choose Your Choice:" get

echo ""
echo " Your Choice: $get "



if [ $get == 1 ]
then
   echo "All Scan !it takes time "
   allscan

elif [ $get == 2 ]
then
   echo " Choose the directory to scan"
   specificscan
elif [ $get == 3 ]
then
clear
detect
else
   echo "Please Enter From 1 up to 3"
fi


} ######### for function main

main
# while read X = 4 ; do
# echo " Your Choice: $X "
# done 


# test () {

# echo "my funstion calls"

# echo
# }

# test









#cmp --silent same.sh same2.sh && echo '### SUCCESS: Files Are Identical! ###' || echo '### k



# if cmp -s "same.sh" "same2.sh"
# then
#    echo "The files match"
# else
#    echo "The files are different"
# fi