# DockerFiles & Information

- Stop all docker containers 
- Delete all docker containers
- Run from Docker YAML (docker compose) 
- Stop from Docker YAML 
- Remove all Docker stuf. `docker system prune -a` 

## Build Command

```bash
$ sudo docker build -t <account_name>/<image_name>:<tag> -f /path/to/Dockerfile /path/to/buildContext
```

Example

```bash
$ sudo docker build -t google/gccimage:bionic -f gcc.Dockerfile
```

## Run Command 

Example 

```bash
$ docker run --name code2inv-prod -it -v $PWD:/production code2inv/code2inv:latest
```

## Commit Command

```bash
$ docker container commit -a "Sumit Lahiri <lari.devs@gmail.com>" llvm29 prodrelworks/llvm29:latest
```

## Push to Registry

Example 

```bash
$ sudo docker image push prodrelworks/kleecontainer:focal
$ sudo docker push prodrelworks/llvm29:latest
```

## Exec Command 

```bash
$ docker exec code2inv bash -c "cd /project ; ./generate.sh"
```
