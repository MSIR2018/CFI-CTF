# Docker deployement of CTF Project 2018 @CFI Montigny
*Builded by Gwendal Orinel, Alexandre Minaret, Gary Bernard, Mohamed Zenati & Romain Chevrier*

## Create docker network :
```
docker network create --subnet=192.168.0.0/24 ctf-network
```

## Build containers image
- Example container
```
docker build https://github.com/MSIR2018/CFI-CTF.git#master:Docker/Activities/Template -t template-image
```

## Run containers:
- Example container
```
docker run -d --name=example -h example --net=ctf-network --ip 192.168.0.2 -p 8080:80 template-image
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
