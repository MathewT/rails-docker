# rails-docker

## Build

```bash
docker build -t smathewthomas/rails-dev .
```

## Run

```bash
docker run --rm -ti -v $HOME/.aws:/root/.aws -v $HOME/.ssh:/root/.ssh  -v "$(pwd)":/app -w /app -e LANG=C.UTF-8 smathewthomas/rails-dev /bin/bash
```

```bash
rails new myexample-api --api -T --database=postgresql
```

## From the dir with the docker-compose.yml, the dir in which the new app is to be created

```bash
docker-compose run --no-deps web rails new . --force --api -T --database=postgresql
```
