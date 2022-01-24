FROM node:14-alpine as builder

WORKDIR /project

COPY . .

RUN yarn install

RUN yarn build

CMD [ "yarn", "start:dev"]
