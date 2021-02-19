.PHONY: all
all: build

.PHONY: build
build:
	docker build --no-cache -t quay.io/schu/toolbox .
