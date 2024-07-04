alias skill="sudo service apache2 stop && sudo service mysql stop && echo 'All services stopped !! ' && ran"

alias ran="sudo lsof -i -P -n | grep LISTEN"

alias wifi="nmcli device wifi show-password"


# systemctl commands
#
alias start="sudo systemctl start "
alias stop="sudo systemctl stop"
alias status="sudo systemctl status"
