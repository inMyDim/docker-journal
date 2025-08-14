# creating network
docker network create --driver bridge docker_bridge_network

# creating container | should not publish the port but provided in example for testing
docker container create --name backend_container --network docker_bridge_network \
    --env MONGO_INITDB_ROOT_USERNAME=dim  \
    --env MONGO_INITDB_ROOT_PASSWORD=dim \
    --publish 27016:27017 \
    mongo:latest

# pull mongo-express image
docker container create --name frontend_container --network docker_bridge_network --publish 8081:8081 \
    --env ME_CONFIG_MONGODB_URL=mongodb://dim:dim@backend_container:27017/ \
    mongo-express:latest

# disconnect container from network
docker network disconnect docker_bridge_network backend_container

# connect container to network
docker network connect docker_bridge_network backend_container