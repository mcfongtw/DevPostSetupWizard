####################
# Basic Shortcurts #
####################

# less with parsed input
alias less='less -r'

# two-column, colorized diff
alias diff='function _diff(){ diff -y $1 $2 | colordiff | less ;}; _diff'

# sed recursively
### Still Under Testing ###
# alias sed.rec='function _sed_rec(){ find $1 -type f -print0 | xargs -0 sed -i "s/$2/$3/g" ;}; _sed_rec'
# alias sed.test='function _sed_test(){ find $1 -name "$2" -type f -exec echo "sed -i s/$3/$4/g" {} \;}; _sed_test'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# ping test to 8.8.8.8
alias ping.test='ping 8.8.8.8'

# gitbook
alias gitbook='docker run --rm -v "$PWD":/gitbook -p 4000:4000 billryan/gitbook gitbook'

#################
# Perf Shortcut #
#################
alias flamegraph.run='sudo perf script --input=/tmp/perf.data | ./stackcollapse-perf.pl | ./flamegraph.pl --color=java --hash > flamegraph.svg'

###################
# Docker Shortcut #
###################
alias docker.rm.exited.containers='docker rm $(docker ps --filter status=exited -q)'
alias docker.rm.all.containers='docker rm $(docker ps -q)'
alias docker.rm.dangling.images='docker rmi $(docker images --filter dangling=true -q)'
alias docker.rm.all.images='docker rmi $(docker images -q)'

###################
# Vagrant Shortcut #
###################
alias vagrant.rm.all.virtualbox='for i in `vagrant global-status | grep virtualbox | awk "{ print \$1 }"` ; do vagrant destroy $i ; done'
alias vagrant.stop.all.virtualbox='for i in `vagrant global-status | grep virtualbox | awk "{ print \$1 }"` ; do vagrant stop $i ; done'
alias vagrant.reload.all.virtualbox='for i in `vagrant global-status | grep virtualbox | awk "{ print \$1 }"` ; do vagrant reload $i ; done'
alias vagrant.rm.all.docker='for i in `vagrant global-status | grep docker | awk "{ print \$1 }"` ; do vagrant destroy $i ; done'

################
# KubeCtl     #
################
alias kubectl.rm.all.pods='kubectl delete --all pods --namespace=default'
alias kubectl.rm.all.deployments='kubectl delete --all deployments --namespace=default'
alias kubectl.rm.all.services='kubectl delete --all services --namespace=default'
alias kubectl.rm.all.hpas='kubectl delete --all hpa --namespace=default'
alias kubectl.rm.everything='kubectl.rm.all.pods; kubectl.rm.all.deployments; kubectl.rm.all.services; kubectl.rm.all.hpas'

###################

#################
# Git Shortcuts #
#################

# Perform `git rm` on already-deleted files
alias git.rm='git ls-files --deleted -z | xargs -0 git rm'

# Nice format for `git log`
alias git.log="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(auto)%d%C(reset)%n''          %C(white)%s%C(reset)%n''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)' --all"
