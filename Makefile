.PHONY: all build

all: build

IMAGE = "localhost/doctoc:latest"

build:
	podman rmi --ignore $(IMAGE)
	podman build -t $(IMAGE) .
