# Docker deployement of CTF Project 2018 @CFI Montigny
*Builded by Gwendal Orinel, Alexandre Minaret, Gary Bernard, Mohamed Zenati & Romain Chevrier*

## Deploying Infrastructure
### Create docker network :
```
docker network create --subnet=192.168.0.0/24 ctf-network
```

### Build containers image
- Build image of demo container
```
docker build https://github.com/MSIR2018/CFI-CTF.git#master:Docker/Activities/Template -t template-image
```

### Run containers:
- Run demo container on port 8080
```
docker run -d --name=example -h example --net=ctf-network --ip 192.168.0.2 -p 8080:80 template-image
```

### List containers:
- List status of containers
```
docker ps -a
```

### Remove containers:
- Remove demo container
```
docker rm -f example
```

### Remove containers image:
- Remove image of demo contair
```
docker rmi -f template-image
```

## Public Status of current working
- [x] Mounting plateform
- [ ] Create web user based interface
- [ ] Creating of first Activities
- [ ] Plateform ready to public use
