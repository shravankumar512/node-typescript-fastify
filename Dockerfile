FROM node:14.15.4-alpine3.12

WORKDIR /code

COPY package.json .
RUN echo "[npm] installing..." && \
    npm install

COPY . .
ENTRYPOINT [ "npm", "run", "start"]
# CMD [ "start" ]