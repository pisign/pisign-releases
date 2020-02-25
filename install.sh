#!/bin/bash

# clone git hub repos
git clone https://github.com/pisign/pisign-frontend.git
git clone https://github.com/pisign/pisign-backend.git

# build frontend 
cd pisign-frontend
git pull origin master
npm install
npm run build

# build backend
cd ../pisign-backend
git pull origin master
go build main.go

# copy build into new folder 
cd ..
mkdir pisign
cp -r pisign-frontend/dist pisign/
cp -r pisign-backend/main pisign/

# clean up
rm -rf pisign-frontend
rm -rf pisign-backend
