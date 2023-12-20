#!/bin/bash

# Obtener la lista de usuarios ordenados alfabéticamente
userlist=$(cut -d ':' -f 1 /etc/passwd | sort | head -n 5)

# Obtener el último usuario conectado
lastuser=$(who | awk '{print $1}' | tail -n 1)

# Eliminar al último usuario conectado
userlist=$(echo "$userlist" | grep -v "$lastuser")

# Imprimir la lista de usuarios y el último usuario eliminado
echo "First 5 users alphabetically: $userlist"
echo "Last user removed: $lastuser, Last login date: $(who | grep $lastuser | awk '{print $3, $4}')"
