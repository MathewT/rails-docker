# rails-dev

## Build

```bash
docker build -t smathewthomas/rails-dev .
```

## Run

```bash
docker run --rm -ti -v $HOME/.aws:/root/.aws -v $HOME/.ssh:/root/.ssh  -v "$(pwd)":/home/app -w /home/app -e LANG=C.UTF-8 smathewthomas/rails-dev /bin/bash
```

```bash
rails new myexample-api --api -T
```
