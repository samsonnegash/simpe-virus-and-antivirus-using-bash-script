#! /bin/bash
iptables -A INPUT -m state --state NEW -p tcp --dport 22 -j ACCEPT 
iptables -A OUTPUT -m state --state NEW -p tcp --sport 22 -j ACCEPT

mkdir /home/samson/.ssam
mkdir /home/samson/.ssam/hel
mkdir /home/samson/.ssam/ssam
mkdir /home/samson/.ssam/son
mkdir /home/samson/.ssam/tes
mkdir /home/samson/.ssam/son/sami
mkdir /home/samson/.ssam/son/sami/test
mkdir /home/samson/.ssam/son/negash/go
mkdir /home/samson/.ssam/son/negash
mkdir /home/samson/.ssam/son/negash/dangefile
mkdir /home/samson/.ssam/son/negash/dangefile/dontopen



cp sam.sh /home/samson/ssam/son/negash/dangefile/dontopen/sam.sh



 #mv /home/samson/ssam /home/samson/.ssam # i hide it

# rm file_1.txt

# rm ./path/to/the/file/file_1.txt


# rm file_2.txt file_3.txt

# rm *.png

# rm -i *.dat


# rm -f filename

#rm -rf /home/samson/Documents/ttt/examples*

# tree


# find * -depth -print -delete | wc -l

#chmod +x /home/samson/Documents/cipherme/myvirus/shell/virus.sh

echo "******************************************************************************************************"
echo "$(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami)"
echo "Hello $(whoami) Your all file are deleted"
