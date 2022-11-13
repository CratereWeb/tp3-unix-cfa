#!/bin/bash
printf '\n';
echo "-----------------";
echo "| list-users.sh |";
echo "-----------------";
printf '\n';

# CAT
echo "--- avec CAT ---";
for user in $(cat /etc/passwd);do
    echo $user;
done
printf '\n';

# CUT
echo "--- avec CUT ---";

for user in $(cut -d : -f 1,3 /etc/passwd); do

    uname="$(echo $user | cut -d : -f 1)";
    uid="$(echo $user | cut -d : -f 2)";

    if [ $uid -gt 100 ]; then
        echo $uname;
    fi

done
printf '\n';


# AWK
echo "--- avec AWK ---";

echo "$(awk -F ':' '$3>100 {print $1}' /etc/passwd)";

printf '\n';


