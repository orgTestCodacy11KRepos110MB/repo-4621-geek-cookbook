alias dklc='docker ps -l'  # List last Docker container
alias dklcid='docker ps -l -q'  # List last Docker container ID
alias dklcip='docker inspect -f "{{range .NetworkSettings.Networks}}{{println .IPAddress}}{{end}}" $(docker ps -l -q)'  # Get IP's of last Docker container
alias dkps='docker ps'  # List running Docker containers
alias dkpsa='docker ps -a'  # List all Docker containers
alias dki='docker images'  # List Docker images
alias dkrmac='docker rm $(docker ps -a -q)'  # Delete all Docker containers
alias dkrmlc='docker-remove-most-recent-container'  # Delete most recent (i.e., last) Docker container
alias dkrmui='docker images -q -f dangling=true |xargs -r docker rmi'  # Delete all untagged Docker images
alias dkrmall='docker-remove-stale-assets'  # Delete all untagged images and exited containers
alias dkrmli='docker-remove-most-recent-image'  # Delete most recent (i.e., last) Docker image
alias dkrmi='docker-remove-images'  # Delete images for supplied IDs or all if no IDs are passed as arguments
alias dkideps='docker-image-dependencies'  # Output a graph of image dependencies using Graphiz
alias dkre='docker-runtime-environment'  # List environmental variables of the supplied image ID
alias dkelc='docker exec -it `dklcid` bash' # Enter last container (works with Docker 1.3 and above)
alias git='docker run -v $PWD:/var/data -v /var/data/git-docker/data/.ssh:/root/.ssh funkypenguin/git-docker git' # Run git client in a container (for hosts witohut git)
alias dsd='docker stack deploy "$1" -c /var/data/config/"$1"/"$1".yml'
alias dsr='docker stack rm "$1"'
