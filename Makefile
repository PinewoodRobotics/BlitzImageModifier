ARGS ?= pi5

build-all:
	COMPILE_ALL=true docker-compose up --build

build-for:
	COMPILE_ALL=false FOR_X=$(ARGS) docker-compose up --build