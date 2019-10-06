# Docs on how to setup Node on docker
# https://github.com/nodejs/docker-node/blob/master/README.md#how-to-use-this-image

FROM node:8.15.1-jessie
WORKDIR /src
COPY package.json /src
RUN yarn install
COPY . /src
EXPOSE 3333
CMD ["yarn", "start"]

# docker build -t name-u-want-4-ur-image .(CWD of of where docker is located)
# spin-up your container by running:
# docker run -it (interactive-terminal) -p 333:333 <docker-image-u-want-to-run>
# docker run -it --rm --name <my-custom_contaier_name> my-nodejs-app
# to kill the container run: docker kill <my-custom_container_name>
# to check runnig docker containers processes: docker ps
# docker commands docs: https://docs.docker.com/engine/reference/commandline/kill/
#
# When in dev environment, we want docker to pickup changes made in our app and 
# automatically updae. without docker this is achieved with nodemon, but with docker we use
# the comand: docker run -it -p 3334:3333 -v $(pwd):/src --name custom_app_name app_name_we_use_in_building 
# Note -p host-port:docker-port
