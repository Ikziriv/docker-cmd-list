# Create container for logs
docker container create --name example-redis redis:latest
# Start container
docker container start example-redis
# Show log with format json
docker container logs example-redis
# Show detail logs
docker container logs -f example-redis