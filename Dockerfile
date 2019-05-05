FROM nginx:alpine

ARG version="3.8.0"

RUN set -x &&\
    apk update && apk add --no-cache curl &&\
    curl -fsSL -o revealjs.tar.gz https://github.com/hakimel/reveal.js/archive/${version}.tar.gz &&\
    tar -zxvf revealjs.tar.gz -C /usr/share/nginx/html/ --strip-components=1 &&\
    rm revealjs.tar.gz

COPY index_md.html /usr/share/nginx/html/index.html
COPY presentation.md /usr/share/nginx/html/presentation.md

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
