#!/bin/bash
echo FROM nginx:latest > /home/goncalves/UTN-FRA_SO_Examenes/202406/docker/Dockerfile
echo COPY index.html /usr/share/nginx/html/index.html >> /home/goncalves/UTN-FRA_SO_Examenes/202406/docker/Dockerfile

docker build -t portu004/web1-goncalves:latest /home/goncalves/UTN-FRA_SO_Examenes/202406/docker

docker push portu004/web1-goncalves:latest

echo "docker run -d -p 8080:80 portu004/web1-goncalves:latest" > /home/goncalves/UTN-FRA_SO_Examenes/202406/docker/run.sh
chmod +x /home/goncalves/UTN-FRA_SO_Examenes/202406/docker/run.sh
sudo usermod -aG docker $USER
