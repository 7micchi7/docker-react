FROM node:8.11.3

ENV APP_ROOT /app

WORKDIR $APP_ROOT

RUN npm install -g npm && \
    npm install -g yarn

COPY package.json $APP_ROOT
COPY yarn.lock $APP_ROOT

RUN yarn

ENV HOST 0.0.0.0
EXPOSE 3000