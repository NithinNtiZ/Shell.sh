#!/bin/bash
#DELETE ALL RUNNING AND EXITED CONTAINERS AND IMAGES FORM THE MACHINE


container_ID=$(docker ps -a | grep -v IMAGE | awk {'print $1'})

echo "CONTAINER ID IS $container_ID"

image_ID=$(docker images | grep -v IMAGE | awk {'print $3'})

echo "IMANGE ID IS $image_ID"

for container in $container_ID;
     do
        docker stop $container
        docker rm $container
    done

for image in $image_ID
    do
        docker rmi -f $image
    done

echo ""
echo ""
echo "ALL CONTAINERS AND IMAGES ARE DELETED FROM THIS MACHINE !!!"
docker ps -a