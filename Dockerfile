# pull official base image
FROM node:16.15.1-alpine

# set working directory
WORKDIR /app

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts -g --silent

# add app
COPY . ./

# start app
CMD ["npm", "start"]