docker volume create mongovolumerestore

docker container run --rm --name ubuntuRestore --mount "type=bind,source=/home/muhdim/docker-dasar-pzn/test-backup-run,destination=/backup" --mount "type=volume,source=mongovolumerestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup-mongovolume-run.tar.gz --strip 1"

docker container create --name mongovolumerestore --publish 27020:27017 --env MONGO_INITDB_ROOT_USERNAME=dim --env MONGO_INITDB_ROOT_PASSWORD=dim --mount "type=volume,source=mongovolumerestore,target=/data/db" mongo:latest