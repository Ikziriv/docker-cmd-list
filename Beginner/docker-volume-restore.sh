# Create volume restore on docker
docker volume create mongo-restore
# Create container restore on docker using ubuntu
docker container run --rm --name restore-ubuntu --mount "type=bind,source=/home/ikziriv/Documents/backup,destination=/backup" --mount "type=volume,source=mongo-restore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"
docker container run --rm --name restore-ubuntu --publish 27020:27017 --mount "type=volume,source=mongo-restore,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest

docker container start mongo-restore