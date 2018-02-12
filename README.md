# CFI-CTF
CTF Project for CFi 

# Docker deployement of CTF Project 

## Create docker network :
```
docker network create --subnet=192.168.0.0/24 ctf-network
```

## Build containers image
- Example container
```
docker build https://github.com/MSIR2018/CFI-CTF.git#master:Docker/DockerFiles/Template -t template-image
```

## Run containers:
- Example container
```
docker run -d --name=example -h example --net=ctf-network --ip 192.168.0.1 template-image
```

## List containers:
```
docker ps -a
```

## Remove containers:
- Example container
```
docker rm -f example
```

## Remove containers image:
- Example container
```
docker rmi -f template-image
```
