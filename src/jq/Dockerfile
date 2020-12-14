FROM busybox:glibc

ARG RELEASE=1.6

RUN mkdir -p /usr/local/bin && \
    wget "https://github.com/stedolan/jq/releases/download/jq-$RELEASE/jq-linux64" -O /usr/local/bin/jq

RUN chmod +x /usr/local/bin/jq

ENTRYPOINT ["jq"]
