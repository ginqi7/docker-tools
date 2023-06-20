containers="$(sh ./dk.sh $1)"
containers_count=$(echo "${containers}" | wc -l)
if [ $containers_count -eq 1 ]
then
    container_id="$(echo $containers | awk '{print $1}')"
    container_image="$(echo $containers | awk '{print $2}')"
    container_name="$(echo $containers | awk '{print $NF}')"
    echo logs in  "${container_id}, ${container_image}, ${container_name}"
    bash_cmd="docker logs $2 ${container_id}"
    echo "${bash_cmd}"
    eval ${bash_cmd}
else
    echo "${containers}"
fi
