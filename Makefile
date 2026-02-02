# First extra target is the device, e.g. "make build-for jetsonnano" -> ARGS=jetsonnano
_device := $(firstword $(filter-out build-for build-all,$(MAKECMDGOALS)))
ifneq ($(_device),)
  ARGS := $(_device)
else
  ARGS ?= pi5
endif

build-all:
	COMPILE_ALL=true docker-compose up --build

build-for:
	COMPILE_ALL=false FOR_X=$(ARGS) docker-compose up --build

# Swallow extra goals so "make build-for jetsonnano" doesn't fail on "jetsonnano"
$(filter-out build-for build-all,$(MAKECMDGOALS)):
	@: