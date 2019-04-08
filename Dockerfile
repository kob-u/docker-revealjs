FROM node:alpine

ARG version="3.8.0"

RUN set -x &&\
    apk update && apk add --no-cache curl &&\
    curl -fsSL -o revealjs.tar.gz https://github.com/hakimel/reveal.js/archive/${version}.tar.gz &&\
    tar -zxvf revealjs.tar.gz -C / --strip-components=1 &&\
    rm revealjs.tar.gz &&\
    npm install

COPY index_md.html index.html
COPY presentation.md presentation.md

EXPOSE 8000
CMD ["npm","start"]
