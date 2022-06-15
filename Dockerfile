# FROM node:12.18.1
# WORKDIR /usr/src/app
# COPY . .
# RUN npm cache clean --force
# RUN apk --no-cache add --virtual builds-deps build-base python
# RUN npm config set python /usr/bin/python
# RUN npm i -g nodemon
# RUN npm i --location=global aerospike
# RUN npm install
# Expose 8090
# CMD ["nodemon", "app.js"]
FROM node:12.18.1
ENV NODE_ENV=production

WORKDIR /app/thulasi

# COPY ["package.json", "package-lock.json*", "./"]

# RUN npm i -g aerospike

COPY . .

RUN npm install

Expose 5010

CMD [ "node", "app.js" ]
