su -
groupadd admins
groupadd moderators
groupadd students

useradd -m -d /home/user0 -G admins,moderators,students user0
useradd -m -d /home/user1 -G moderators,students user1
useradd -m -d /home/user2 -G moderators,students user2
useradd -m -d /home/user3 -G moderators,students user3
useradd -m -d /home/user4 -G students user4
useradd -m -d /home/user5 -G students user5
useradd -m -d /home/user6 -G students user6
useradd -m -d /home/user7  user7
useradd -m -d /home/user8  user8
useradd -m -d /home/user9  user9

chgrp students /home/user7
chgrp students /home/user8
chgrp students /home/user9
chgrp moderators /home/user4
chgrp moderators /home/user5
chgrp moderators /home/user6
chgrp admins /home/user1
chgrp admins /home/user2
chgrp admins /home/user3

for i in {0..9}
do
chmod 770 home/user$i
done

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




