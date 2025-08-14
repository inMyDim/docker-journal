docker image pull nginx:latest

docker container create --name contohnginx --publish 5000:80 nginx:latest
