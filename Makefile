# ==============================================================================
# TARGETS

dockerfiles := $(shell find src -type f -name 'Dockerfile')
builds := $(patsubst src/%/Dockerfile,src/%/.build,$(dockerfiles))
pushes := $(patsubst src/%/Dockerfile,src/%/.push,$(dockerfiles))

# ==============================================================================
# FILES

src/%/.build: \
		src/%/Dockerfile \
		src/%/build-args
	@echo "\n==> Building $(shell basename $(shell dirname $<))"
	bin/build $(shell dirname $<)/Dockerfile
	touch $@

src/%/.push: \
		src/%/Dockerfile \
		src/%/build-args
	@echo "\n==> Pushing $<"
	bin/push $(shell dirname $<)/Dockerfile
	touch $@

# ==============================================================================
# RULES

default: help

build: $(builds)
build: ## build docker images
	@echo "All builds succeeded."
.PHONY: build

push: $(pushes)
push: ## publish docker images (dockerhub)
	@echo "Published all images."
.PHONY: push

# -- Misc
help:
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' Makefile | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
.PHONY: help
