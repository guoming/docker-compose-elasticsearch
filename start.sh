mkdir -p /mnt/elasticsearch/data
chmod 777 /mnt/elasticsearch/data
sysctl -w vm.max_map_count=262144


docker node update --label-add elasticsearch=node1 sz-new-test
docker node update --label-add elasticsearch=node2 sz-itdev4

docker stack deploy --compose-file docker-compose.yml elasticsearch