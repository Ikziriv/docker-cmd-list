# Pull image docker mongo using tag latest
docker image pull mongo:latest
# Create container on docker
docker container create --name example-mongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=ikziriv --env MONGO_INITDB_ROOT_PASSWORD=ikziriv mongo:latest
