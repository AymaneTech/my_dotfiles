
alias art="sail artisan"
alias serve="sail artisan serve"
alias migrate="sail artisan migrate"
alias tinker="sail artisan tinker"

alias controller="sail artisan make:controller"
alias model="sail artisan make:model"
alias migration="sail artisan make:migration"
alias service="sail artisan make:service"
alias request="sail artisan make:request"
alias provider="sail artisan make:provider"
alias comp="sail artisan make:component"
alias seeder="sail artisan make:seeder"
alias mail="sail artisan make:mail"
alias action="sail artisan make:action"
alias middleware="art make:middleware"
alias resource="art make:resource"
alias enum="art make:enum"
alias trait="art make:trait"
alias interface="art make:interface"
alias policy="art make:policy"
alias repository="art make:repository"
alias factory="art make:factory"

alias routelist="sail artisan route:list"
alias routeclear="sail artisan route:clear"
alias refresh="sail artisan migrate:refresh"
alias show='sail artisan model:show'
alias fresh="sail artisan migrate:fresh"
alias dbreset="sail artisan migrate:reset"
alias seed="sail artisan db:seed"
alias status="sail artisan migrate:status"
alias pretend=".vendor/bin/sail artisan migrate --pretend"
alias dmysql="sail mysql -u sail -p"
#alias psql="sail psql"
alias storage="sail artisan storage:link"

install_laravel() {
    if [ -z "$1" ]; then
        echo "Usage: install_laravel <app_name>"
        return 1
    fi

    curl -s https://laravel.build/"$1" | bash
}

# Create an alias to call the function with a custom name
alias laravel=install_laravel
