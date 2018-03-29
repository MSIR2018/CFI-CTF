# Docker deployement of CTF Project 2018 @CFI Montigny
:shipit: *Builded by Gwendal Orinel, Alexandre Minaret, Gary Bernard, Mohamed Zenati & Romain Chevrier*

## Deploying Infrastructure
### Create docker networks :
```
sudo docker network create --driver=macvlan --subnet=11.0.0.0/8 --gateway=11.255.255.254 -o parent=br301  -o macvlan_mode=bridge  teamA
sudo docker network create --driver=macvlan --subnet=12.0.0.0/8 --gateway=12.255.255.254 -o parent=br302 -o macvlan_mode=bridge  teamB
```

### Build containers image
- Build image of demo container
```
appname='example'
appteamA=$appname'_a'
appteamB=$appname'_b'

docker build https://github.com/MSIR2018/CFI-CTF.git#master:Docker/Challenges/$appname/TeamA -t $appteamA
docker build https://github.com/MSIR2018/CFI-CTF.git#master:Docker/Challenges/$appname/TeamB -t $appteamB
```

### Run containers:
- Run demo container
```
docker run -d --name=$appteamA -h $appteamA --restart=always --net=teamA $appteamA
docker run -d --name=$appteamB -h $appteamB --restart=always --net=teamB $appteamB
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

## Public status of current working
- [x] Mounting plateform
- [x] Create web user based interface
- [x] Creating of first Activities
- [x] Plateform ready to public use
- [x] Video presentation
- [x] Development ended
