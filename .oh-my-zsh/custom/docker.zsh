alias dkp='docker ps'
alias dkpa='docker ps -a'

alias dkk='docker kill'

# kill and delete all
alias dkka='docker rm $(docker kill $(docker ps -aq))' 

alias dke='docker exec -it'

alias dkcl='docker container ls -a'

alias dkil='docker images ls -a'
