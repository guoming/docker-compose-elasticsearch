mkdir -p /mnt/elasticsearch/data
chmod 777 /mnt/elasticsearch/data
sysctl -w vm.max_map_count=262144

docker stack deploy --compose-file docker-compose.yml elasticsearch