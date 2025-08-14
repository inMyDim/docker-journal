# creating network
# docker network create --driver {driver} {name_of_network}
docker network create --driver bridge docker_bridge_network

# removing network
# docker network rm {name_of_network}
docker network rm docker_bridge_network
