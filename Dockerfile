FROM node

RUN git clone https://github.com/omegang610/ibpmv2.git /var/www \
    && cd /var/www \
    && npm install --global rimraf \
    && npm run clean \
    && npm install \
    && npm run build:prod

EXPOSE 8080
EXPOSE 4200
WORKDIR /var/www
ENTRYPOINT ["npm", "run", "start:prod"]
