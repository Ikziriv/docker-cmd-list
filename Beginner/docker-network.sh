# List docker network
docker network ls
docker network create --driver [driver-name] [network-name]
# Example create docker network
docker network create --driver bridge example-network
# Example remove docker network
docker network rm example-network