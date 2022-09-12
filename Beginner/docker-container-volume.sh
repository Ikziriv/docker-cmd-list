# Create docker volume
docker volume create [volume-name]
# Example create docker volume
docker volume create data-mongo
# Command using create volume, publish, mount + env setup
docker container create --name [nama-container] --publish [used-port]:[default-port] --mount "type=[type],source=[nama-volume],destination=[source-destination" --env MONGO_INITDB_ROOT_USERNAME=[username] --env MONGO_INITDB_ROOT_PASSWORD=[passowrd] [image-name]:[tag-type]
# Example command using create volume, publish, mount + env setup
docker container create --name mongo-volume --publish 27019:27017 --mount "type=volume,source=data-mongo,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=ikziriv --env MONGO_INITDB_ROOT_PASSWORD=ikziriv mongo:latest
# Example stop container volume
docker container stop mongo-volume
# Example remove container volume
docker container rm mongo-volume