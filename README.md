# Boilerplate code to use Phoenix in a Docker container

How to use:
  * create app folder and copy boilerplate files into the folder
  * adjust/replace settings in `docker/build/Dockerfile`
  * run `docker-compose build`
  * run `docker-compose run web mix phoenix.new . --app <app_name>` (<app_name> should match with your app folder); confirm all questions with 'Y'
  * open `config/dev.exs` and replace the database configs with:

  ```elixir
  # Configure your database
  config <app_name>, <AppName>.Repo,
    adapter: Ecto.Adapters.Postgres,
    username: System.get_env("DB_USER"),
    password: "",
    database: System.get_env("DB_DATABASE"),
    hostname: System.get_env("DB_HOST"),
    pool_size: 10
  ```  
  * run `docker-compose up web` and navigate to http://localhost:4000
