# docker container stop {container_name}
# /home/muhdim/docker-dasar-pzn/test-backup

docker container create --name withnginxbackup --mount "type=bind,source=/home/muhdim/docker-dasar-pzn/test-backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" nginx:latest 

docker container start withnginxbackup

# inside /bin/sh 
docker container exec -it withnginxbackup /bin/sh

tar cvf /backup/backup-mongovolume.tar.gz -C /data .

docker container stop withnginxbackup

docker container rm withnginxbackup

docker container start mongovolume
