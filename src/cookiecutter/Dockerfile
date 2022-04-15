FROM python:alpine3.15

ARG COOKIECUTTER_VERSION

RUN apk add --update \
    bash \
    py-pip \
    g++ \
    git && \
    pip install cookiecutter==$COOKIECUTTER_VERSION && \
    apk del g++ py-pip && \
    rm -rf /var/cache/apk/*

RUN mkdir -p /.cookiecutter_replay /.cookiecutters && \
    chmod 777 /.cookiecutter_replay /.cookiecutters

WORKDIR /app

ENTRYPOINT ["cookiecutter"]
