alias dkp='docker ps'
alias dkpa='docker ps -a'
alias dkk='docker kill'
alias dke='docker exec -it'
# kill and delete all
alias dkka='docker rm $(docker kill $(docker ps -aq))' 
