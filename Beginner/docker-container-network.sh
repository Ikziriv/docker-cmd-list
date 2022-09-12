docker network create --driver [driver-type] [driver-name]
# Example command create network using driver bridge
docker network create --driver bridge mongo-network

docker container create --name [container-name] --network [network-name] --env MONGO_INITDB_ROOT_USERNAME=[username] --env MONGO_INITDB_ROOT_PASSWORD=[password] [image-name]:[tag-type]
# Example create container and using network that created before
docker container create --name db-mongo --network mongo-network-one --env MONGO_INITDB_ROOT_USERNAME=ikziriv --env MONGO_INITDB_ROOT_PASSWORD=ikziriv mongo:latest

# Example case connect mongo-express image to [mongo-network]
# Pull mongo-express image
docker image pull mongo-express:latest
# Create container docker
docker container create --name db-mongo-express --network mongo-network --publish 8081:8081 --env E_CONFIG_MONGODB_URL="mongodb://ikziriv:ikziriv@mongodb:27017/" mongo-express:latest
# Start contauber docker db
docker container start db-mongo
docker container start db-mongo-express
# If you want to disconnect network and container db-mongo
docker network disconnect mongo-network db-mongo
# If you want to connect again network and container db-mongo
docker network connect mongo-network db-mongo