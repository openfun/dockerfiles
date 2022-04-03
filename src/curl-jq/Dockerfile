FROM busybox:glibc

ARG CURL_RELEASE
ARG JQ_RELEASE

RUN mkdir -p /usr/local/bin && \
    wget \
      "https://github.com/stedolan/jq/releases/download/jq-$JQ_RELEASE/jq-linux64" \
      -O /usr/local/bin/jq

RUN wget \
      "https://github.com/moparisthebest/static-curl/releases/download/v$CURL_RELEASE/curl-amd64" \
      -O /usr/local/bin/curl

RUN mkdir -p /etc/ssl/certs/ && \
    wget \
      "https://curl.haxx.se/ca/cacert.pem" \
      -O /etc/ssl/certs/ca-certificates.crt

RUN chmod +x \
      /usr/local/bin/jq \
      /usr/local/bin/curl
