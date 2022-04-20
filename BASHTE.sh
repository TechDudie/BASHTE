#!/bin/bash
# Ripoff vim
clear
echo "###############################################################################"
echo "#  BASHTE TEXT EDITOR -  \\\ = interupt  :q = quit  :w = write            your#"
echo "#  :wq = Write and quit  :q! = quit and discard  :dd = Delete Previous linemom#"
echo "###############################################################################"
echo ""
read -p "Enter file name: " file
touch $file
mkdir ~/.bashte
clear
echo "###############################################################################"
echo "#  BASHTE TEXT EDITOR -  \\\ = interupt  :q = quit  :w = write             dot#"
echo "#  :wq = Write and quit  :q! = quit and discard  :dd = Delete Previous linecom#"
echo "###############################################################################"

while true
do  
    read -p "$lines >" store
    if [ "$store" = "\\:q" ]
    then
        break
    elif [ "$store" = "\\:w" ]
    then
        ls ~/.bashte/* | sort -n | xargs cat >> $file
    elif [ "$store" = "\\:wq" ]
    then
        ls ~/.bashte/* | sort -n | xargs cat >> $file
        rm -rf .$file
        break
    elif [ "$store" = "\\:q!" ]
    then
        rm -rf BASHTE
        rm -rf $file
        break

    elif [ "$store" = "\\:dd" ]
    then
    LMaO=$(expr $lines - 1)
    rm -rf ~/.bashte/$LMaO.txt
    else

        echo $store >> ~/BASHTE/$lines.txt
        # counts the number of times the while loop is run
        ((lines++))
    fi
done












