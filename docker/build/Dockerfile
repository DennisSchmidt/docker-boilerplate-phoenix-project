FROM elixir:latest

# Install hex
RUN mix local.hex --force

# Install rebar
RUN mix local.rebar --force

# Install the Phoenix framework itself
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez

# Install NodeJS 6.x and the NPM
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get install -y nodejs
RUN npm config set strict-ssl false

# Install inotify (auto reload)
RUN apt-get install -y inotify-tools

ENV APP_HOME /app
WORKDIR $APP_HOME
