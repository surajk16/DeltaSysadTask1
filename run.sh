for i in {0..9}
do
for j in {1..10}
do
cd /home/user$i/folder$j
< /dev/urandom tr -dc "[:alnum:]" | head -c10 > file.txt
done
done

