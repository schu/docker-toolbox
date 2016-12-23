

all: build

.PHONY: all

build:
	docker build -t schu/toolbox .

.PHONY: build
