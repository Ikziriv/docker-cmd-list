# Set port command on docker
docker container create --name [container-name] --publish [default-port]:[share-to-port] [docker-image-name]:[tag-type]
# Example case pull nginx
docker image pull nginx:latest
# Example create container and publish port
docker container create --name example-nginx --publish 8080:80 nginx:latest