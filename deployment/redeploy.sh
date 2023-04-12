#! /bin/bash

docker stop site
docker rm site
docker pull tyleriireland/project4:latest
docker run -d -p 8000:80 --name site tyleriireland/project4
