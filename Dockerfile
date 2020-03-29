FROM node:12.16.1-alpine

ENV NUXT_HOST="0.0.0.0" \
    NUXT_PORT="3000"

WORKDIR /var/www

COPY ./package.json ./package.json
COPY ./yarn.lock ./yarn.lock

RUN yarn install && \
    yarn build

CMD ["yarn", "start"]