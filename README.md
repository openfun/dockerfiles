# Dockerfiles

In this repository, you will find sources of Docker images we often use at
@openfun and for which no official or satisfying image is distributed.

## Usage

To build all images use the dedicated make target:

```bash
$ make build
```

And to publish build images to Dockerhub:

```bash
$ make push
```

## Tools

### `jq`

- Project: https://stedolan.github.io/jq/
- Image sources: [Dockerfile](./src/jq/Dockerfile)
- Image tags: [fundocker/jq](https://hub.docker.com/r/fundocker/jq/tags)

## License

This work is released under the MIT License (see [LICENSE](./LICENSE))
