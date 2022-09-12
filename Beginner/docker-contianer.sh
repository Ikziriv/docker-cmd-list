# List detail container
docker container ls- a
# List default container
docker container ls
docker container create --name [container-name] [image-name]:[tag-type]
# Example command create container 1
docker container create --name example-redis-one redis:latest
# Example command create antoher container using same image type
docker container create --name example-redis-two redis:latest

# Starting container command
docker container start example-redis-one
docker container start example-redis-two
# Stoping container command
docker container stop example-redis-one
docker container stop example-redis-two
# Remove contaienr command
docker container rm example-redis-one
docker container rm example-redis-two