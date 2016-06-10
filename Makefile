VERSION := $(shell git rev-parse --short HEAD)
IMG := quay.io/arschles/boom:${VERSION}
docker-build:
	docker build -t ${IMG} .
