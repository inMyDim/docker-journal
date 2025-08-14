docker volume create mongovolume

docker container create --name mongovolume --publish 27019:27017 --env MONGO_INITDB_ROOT_USERNAME=dim --env MONGO_INITDB_ROOT_PASSWORD=dim --mount "type=volume,source=mongovolume,target=/data/db" mongo:latest