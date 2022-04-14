#/bin/bash
clear
echo "###########################################################"
echo "#  BASHTE TEXT EDITOR - i = insert  :q = quit  :w = write #"
echo "#  :wq = Write and quit  :q! = quit and discard           #"
echo "###########################################################"
echo ""
read -p "Enter file name: " file
touch $file
clear
echo "###########################################################"
echo "#  BASHTE TEXT EDITOR - i = insert  :q = quit  :w = write #"
echo "#  :wq = Write and quit  :q! = quit and discard           #"
echo "###########################################################"
read -p ">" store
awk 'NR==3{print $store}1' $file
read -p ">" store
read -p ">" store
read -p ">" store
read -p ">" store
read -p ">" store
read -p ">" store
read -p ">" store
read -p ">" store
read -p ">" store
read -p ">" store
read -p ">" store
echo $store
