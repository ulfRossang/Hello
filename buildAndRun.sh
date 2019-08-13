#!/bin/sh
mvn clean package && docker build -t se.waymark/Hello .
docker rm -f Hello || true && docker run -d -p 8080:8080 -p 4848:4848 --name Hello se.waymark/Hello 
