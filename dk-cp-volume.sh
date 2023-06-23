old_volume_name=$1
new_volume_name=$2
create_new_docker_volume_cmd="docker volume create ${new_volume_name}"
echo ${create_new_docker_cmd}
eval ${create_new_docker}
copy_docker_volumne_cmd="docker run --rm -v ${old_volume_name}:/from -v ${new_volume_name}:/to alpine ash -c \"cd /from ; cp -a . /to\""
echo ${copy_docker_volumne_cmd}
eval ${copy_docker_volumne_cmd}
