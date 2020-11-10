# Rails API Boilerplate 

Cette app est une base de démarrage pour créer une API avec Ruby on Rails qui intègre un systeme d'authentification JWT, un système de permission et de rôles et la configuration du CORS et d'un pare-feu pour notre application. 

Cette app est issu de [l'article publier sur médium](https://titouandessus.medium.com/ruby-on-rails-api-apprendre-jwt-cors-authentification-knock-roles-permissions-pundit-7bfd3bea1b) qui explique comment la créer de zéro 


Jeter y un oeil comme documentation de référence. 


## Installation 

```bash
git clone https://github.com/Titouax/rails-api-boilerplate.git && 
cd rails-api-boilerplate/ && 
bundle install  && 
rails db:create db:migrate db:seed 
```

Renommer le fichier `config/application.yml.default` en `config/application.yml`

```bash
rails s 
```


Vous pouvez maintenant visiter votre [http://localhost:3000/](http://localhost:3000/)

