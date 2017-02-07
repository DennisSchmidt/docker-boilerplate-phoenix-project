#!/bin/bash

echo "Install dependencies ..."
mix deps.get

echo "Install npm packages ..."
npm install

echo "Create DB ..."
mix ecto.create

echo "Starting webserver ..."
mix phoenix.server
