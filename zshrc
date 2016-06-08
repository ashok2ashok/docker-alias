# ------------------------------------
# Docker alias and function
# ------------------------------------

# Get latest container ID
alias dl="docker ps -l -q"

# Get container process
alias dps="docker ps"

# Get process included stop container
alias dpa="docker ps -a"

# Get images
alias di="docker images"

# Get container IP
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dki="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dex="docker exec -i -t"

# Get top docker container, e.g., $docker top myContainerName
alias dtop="docker top"

# Start a docker container, e.g., $docker start myContainerName
alias dup="docker start"

# Stop a docker container, e.g., $docker stop myContainerName
alias dstp="docker stop"

# Restart a docker container, e.g., $docker restart myContainerName
alias drst="docker restart"

# Attach to a detached docker container, e.g., $docker attach myContainerName
alias datt="docker attach"

# Restart a docker container, e.g., $docker restart myContainerName
alias drst="docker restart"

# Get docker info, e.g., $docker info
alias dinf="docker info"

# Remove/Delete a docker container, e.g., $docker rm myContainerName
alias drm="docker rm"

# Force Remove/Delete a docker container, e.g., $docker rm -f myContainerName
alias drm="docker rm -f"

# Get Logs for a container, e.g., $docker logs myContainerName
alias dlog="docker logs"

# Get and Follow Logs for a container, e.g., $docker logs -f myContainerName
alias dlogf="docker logs -f"

# Inspect a container, e.g., $docker inspect myContainerName
alias dins="docker inspect"

# Stop all containers
dstopall() { docker stop $(docker ps -a -q); }

# Remove all containers
drmall() { docker rm $(docker ps -a -q); }

# Stop and Remove all containers
alias dstrm='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test 
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
