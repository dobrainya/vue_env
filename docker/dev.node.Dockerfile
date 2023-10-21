ARG USERID
ARG GROUPID

FROM node:lts-alpine3.18

RUN npm install -g @vue/cli

# RUN mkdir -p /var/www/app \
#     && chown node:node -R /var/www

USER node:node

WORKDIR /var/www/app

ENTRYPOINT ["docker-entrypoint.sh"]

CMD [ "npm", "run", "serve"]
