#/bin/bash
clear
echo "###########################################################"
echo "#  BASHTE TEXT EDITOR - i = insert  :q = quit  :w = write #"
echo "#  :wq = Write and quit  :q! = quit and discard           #"
echo "###########################################################"
echo ""
read -p "Enter file name: " file
touch $file
touch tempfile.txt
clear
echo "###########################################################"
echo "#  BASHTE TEXT EDITOR - i = insert  :q = quit  :w = write #"
echo "#  :wq = Write and quit  :q! = quit and discard           #"
echo "###########################################################"
read -p ">" store
# stores store in file
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt
read -p ">" store
echo $store >> tempfile.txt

# detects if user wants to quit or write
while [ $store != ":q" ] && [ $store != ":w" ] && [ $store != ":wq" ] && [ $store != ":q!" ]

