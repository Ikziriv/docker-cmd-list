
docker container create --name [container-name] --publish [port-used]:[default-port] --mount "type=bind,source=[form-source],destination=[destination-source]" --env MONGO_INITDB_ROOT_USERNAME=[username] --env MONGO_INITDB_ROOT_PASSWORD=[password] [image-name]:[tag-type]
# Example command mount docker container
docker container create --name data-mongo --publish 27018:27017 --mount "type=bind,source=/home/ikziriv/Documents/data-mongo,destination=/data/db-data-mongo" --env MONGO_INITDB_ROOT_USERNAME=ikziriv --env MONGO_INITDB_ROOT_PASSWORD=ikziriv mongo:latest
