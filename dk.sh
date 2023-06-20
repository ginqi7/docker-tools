if [ -z "$1" ]; then
    docker ps | awk 'NR>1 { print }' 

else
    docker ps | awk 'NR>1 { print }' | grep $1
fi
