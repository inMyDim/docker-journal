docker container ls -a

# docker container create --name {container name} {image name}:{tag}

docker container create	--name contohredis redis:latest

# docker container start containerID or containerNAME

docker container start contohredis

# view running

docker container ls

# stop

docker container stop contohredis

# remove

docker container rm contohredis

#-----------------
docker container ls -a
