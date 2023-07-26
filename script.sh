# !/bin/bash

docker stop react_app
docker rm react_app
# docker rmi react_app --force
docker build -t react_app .
docker run -p 8080:25238 -d --name react_app --restart always react_app