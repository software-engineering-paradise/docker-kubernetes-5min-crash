# Docker Cheat Sheet - @software.engineering.paradise

## Build & Run
docker build -t myapp .
docker run -p 3000:3000 --name myapp -d myapp
docker run -v mydata:/app/data myapp

## List & Debug
docker ps -a
docker logs -f myapp
docker exec -it myapp sh
docker inspect myapp

## Cleanup
docker stop myapp && docker rm myapp
docker rmi myapp
docker system prune -a
docker volume prune

## Compose
docker-compose up -d --build
docker-compose down
docker-compose ps
docker-compose logs -f api
