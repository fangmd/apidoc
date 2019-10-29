FROM redocly/redoc

COPY ./index.html /usr/share/nginx/html

COPY ./swagger.json /usr/share/nginx/html/