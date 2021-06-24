FROM node:14.0.0-alpine
LABEL Maintainer="Ifeoluwa Sobogun <sobogunifeoluwa@gmail.com>"

WORKDIR /usr/local/express-app-template

ADD application/package.json application/package-lock.json /usr/local/express-app-template/
RUN npm install && npm cache verify;

ADD application /usr/local/express-app-template/

CMD ["npm", "start"]
