FROM node:14 AS build

WORKDIR /app

COPY ./package.json* ./

RUN npm install

RUN npm install perf_hooks

COPY ./ ./

EXPOSE 3000

CMD [ "npm" , "run" , "dev" ]
