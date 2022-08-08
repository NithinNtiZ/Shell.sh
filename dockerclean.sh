#!/bin/bash
##ONLY DELETE EXITED CONTAINER AND IMAGE RELATED TO THE CONTAINER.


container_name=$(docker ps -a | grep Exited | awk {'print $2'})
container_ID=$(docker ps -a | grep Exited | awk {'print $1'})

#echo $container_ID
echo $container_name


for ID in $container_ID;
  do 
    docker rm -f $ID
  done


for name in $container_name;
  do 
    a=$(docker images | grep $name | awk {'print $3'}) #| xargs docker rmi -f '{}'
    docker rmi -f $a
  done

echo ""
echo ""
echo "ALL EXITED CONTAINERS AND IMAGES ARE DELETED FROM THIS MACHINE !!!"

docker images