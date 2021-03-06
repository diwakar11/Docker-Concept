---------------------------------------------------------------------------------
prune can also be used on just one aspect:

# docker container prune            # Remove all stopped containers
# docker volume prune               # Remove all unused volumes
# docker image prune                # Remove unused images

----------------------------------------------------------------------------------

# docker system prune

WARNING! This will remove:
        - all stopped containers
        - all networks not used by at least one container
        - all dangling images
        - all build cache
        
---------------------------------------------------------------------------------
So, to also remove the volumes (--volumes), any unused images (--all), as well as override the confirmation prompt (--force):

# docker system prune --all --force --volumes

WARNING! This will remove:
        - all stopped containers
        - all networks not used by at least one container
        - all volumes not used by at least one container
        - all images without at least one container associated to them
        - all build cache
        
----------------------------------------------------------------------------------------

docker ps — Lists running containers. Some useful flags include: -a / -all for all containers (default shows just running) 
and —-quiet /-q to list just their ids (useful for when you want to get all the containers).

-----------------------------------------------------------------------------------------

docker logs — Use this command to display the logs of a container, you must specify a container and can use flags, 
such as --follow to follow the output in the logs of using the program. 

# docker logs --follow my_container

----------------------------------------------------------------------------------------
docker volume ls — This lists the volumes, which are the preferred mechanism for persisting data generated by and used by 
Docker containers.
---------------------------------------------------------------------------------------
docker rm — Removes one or more containers.

# docker rm my_container
---------------------------------------------------------------------------------------
docker rmi — Removes one or more images. 

# docker rmi my_image
---------------------------------------------------------------------------------------
docker stop — Stops one or more containers. 

# docker stop my_container stops one container, 

while # docker stop $(docker ps -a -q) stops all running containers. 
A more direct way is to use docker kill my_container, which does not attempt to shut down the process gracefully first.
------------------------------------------------------------------------------------------ 
Use them together, for example to clean up all your docker images and containers:
kill all running containers with # docker kill $(docker ps -q)
delete all stopped containers with # docker rm $(docker ps -a -q)
delete all images with # docker rmi $(docker images -q)
-----------------------------------------------------------------------------------------


