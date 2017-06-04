su -
groupadd admins
groupadd moderators
groupadd students

useradd -m -d /home/user0 -G admins,moderators,students user0
useradd -m -d /home/user1 -G moderators,students user{1..3}
useradd -m -d /home/user4 -G students user{4..6}
useradd -m -d /home/user7  user{7..9}


chgrp students /home/user{7..9}
chgrp moderators /home/user{4..6}
chgrp admins /home/user{1..3}

chmod 770 home/user{0..9}

mkdir user{0..9}/folder{1..10}

for i in {0..9}
do
for j in {1..10}
do
cd /home/user$i/folder$j
< /dev/urandom tr -dc "[:alnum:]" | head -c10 > file.txt
done
done

crontab -e

21 15 * * 1-6 /home/your-user/run.sh>/dev/null 2>&1




