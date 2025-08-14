docker container stop mongovolume

docker container run  --rm --name ubuntubackup --mount "type=bind,source=/home/muhdim/docker-dasar-pzn/test-backup-run,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" ubuntu:latest tar cvf /backup/backup-mongovolume-run.tar.gz /data

