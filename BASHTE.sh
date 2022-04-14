#/bin/bash
clear
echo "###########################################################"
echo "#  BASHTE TEXT EDITOR -  :q = quit  :w = write            #"
echo "#  :wq = Write and quit  :q! = quit and discard           #"
echo "###########################################################"
echo ""
read -p "Enter file name: " file
touch $file
touch tempfile.txt
clear
echo "###########################################################"
echo "#  BASHTE TEXT EDITOR -  :q = quit  :w = write            #"
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
if [ $store == ":q" ]
then
echo "Quitting..."
exit
elif [ $store == ":w" ]
then
echo "Writing..."
cat tempfile.txt > $file
elif [ $store == ":wq" ]
then
echo "Writing..."
cat tempfile.txt > $file
echo "Quitting..."
exit
elif [ $store == ":q!" ]
then
echo "Quitting..."
exit
else
echo "Invalid input"
fi



do
    read -p "Enter choice: " choice
    case $choice in
        
        q)
            echo "Quitting..."
            rm -rf tempfile.txt
            exit
           
            ;;
        w)
            echo "Writing..."
            cat tempfile.txt >> $file
            echo "Writing done."
            rm -rf tempfile.txt
            exit
            ;;
        wq)
            echo "Writing..."
            cat tempfile.txt >> $file
            echo "Writing done."
            rm -rf tempfile.txt
            exit
            ;;
        q!)
            echo "Quitting..."
            rm tempfile.txt
            rm -rf tempfile.txt
            exit
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
done
