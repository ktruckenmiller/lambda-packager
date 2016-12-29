#!/bin/sh
docker build -t stenny .
my_container=$(docker create -it stenny)
docker cp ./ $my_container:/build/
docker start -i $my_container
