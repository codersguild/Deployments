## Build Command

```
$ sudo docker build -t <account_name>/<image_name>:<tag> -f /path/to/Dockerfile /path/to/buildContext
```

Example

```
$ sudo docker build -t google/gccimage:bionic -f gcc.Dockerfile
```
