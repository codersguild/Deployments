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
