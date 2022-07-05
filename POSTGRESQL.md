# Monitoring postgresql with Zabbix

## Setup 
```shell
docker run -d -p 9000:9000 --name portainer -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer -H unix:///var/run/docker.sock 
```

## First function 
### get wal size
```shell
docker exec -it db /bin/bash -c " cd tmp ; cat size.sql | psql -U postgres  postgres | awk 'NR==3' | xargs "
```