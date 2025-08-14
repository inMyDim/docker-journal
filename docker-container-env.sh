docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=dim --env MONGO_INITDB_ROOT_PASSWORD=dim mongo:latest
