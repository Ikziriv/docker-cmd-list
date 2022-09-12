# Stop container volume on docker
docker container stop mongo-volume
# Create container backup
docker container create --name nginx-backup --mount "type=bind,source=/home/ikziriv/Documents/backup,destination=/backup" --mount "type=volume,source=mongo-data,destination=/data" nginx:latest
docker container start nginx-backup 

docker container exec -i -t nginx-backup /bin/bash
tar cvf /backup/backup.tar.gz /data
docker container stop nginx-backup
docker container rm nginx-backup

docker container start mongo-volume
docker image pull ubuntu:latest
docker container stop mongo-volume
docker container run --rm --name ubuntu-backup --mount "type=bind,source=/home/ikziriv/Documents/backup,destination=/backup" --mount "type=volume,source=mongo-data,destination=/data" ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data

docker container start mongo-volume

