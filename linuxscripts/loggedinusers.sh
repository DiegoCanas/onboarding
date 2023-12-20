#!/bin/bash

who | while read line; do
    username=$(echo $line | awk '{print $1}')
    lastlogin=$(echo $line | awk '{print $3, $4}')
    realname=$(getent passwd $username | cut -d ':' -f 5 | cut -d ',' -f 1)
    echo "User: $username, Real Name: $realname, Last Login: $lastlogin"
done
