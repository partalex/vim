# docker compose build

```bash
docker compose down
docker compose up --build
```

# reset

```bash
docker system prune -af
```

# remove all

### remove

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi -f $(docker images -aq)
docker volume rm $(docker volume ls -q)
docker network rm $(docker network ls -q)

### check

docker ps -a # should be empty
docker images # should be empty
docker volume ls # should be empty
docker network ls # default networks remain, custom are gone

## guide

| Action           | Needed                         |
|------------------|--------------------------------|
| Edit Python code | `docker compose up --build`    |
| Edit nginx.conf  | `docker compose restart nginx` |
| Edit React code  | `npm run build`                |
| Edit compose.yml | `docker compose down && up`    |
