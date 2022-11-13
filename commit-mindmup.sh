#!/bin/bash
cd /root/gitmind
mapfile -t my_array < <(git status | grep modified: | tr -s ' ' | awk -F ': ' '{print $2}')

len=${#my_array[@]}
for ((i=0; i < $len; i++)); do
   git add "${my_array[i]}"
   git commit -m "update mapa mental: ${my_array[$i]}"
done

git push origin main