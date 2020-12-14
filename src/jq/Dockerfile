FROM busybox:glibc as base

# -- download
FROM curlimages/curl as download

ARG RELEASE=1.6

RUN curl -L "https://github.com/stedolan/jq/releases/download/jq-$RELEASE/jq-linux64" -o /tmp/jq

# -- production
FROM base as production

COPY --from=download /tmp/jq /usr/local/bin/jq

RUN chmod +x /usr/local/bin/jq

ENTRYPOINT ["jq"]
