# base image
FROM node:9.4

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# install and cache app dependencies
ADD package.json /usr/src/app/package.json
RUN yarn
RUN yarn global add react-scripts@1.1.1

# start app
CMD ["yarn", "start"]
