SHELL=/bin/bash

name = ruby
image = ruby
ports = 3000:3000
path = $(shell pwd)
network = ruby-net
dockerFile = /home/ruahman/Projects/ruby/docker/Dockerfile

.PHONY: build
build:
	@echo $(dockerFile)
	@if [[ "$(shell docker images -q $(image) 2> /dev/null)" == "" ]]; then \
		docker build -f $(dockerFile) -t $(image) $(path); \
	else \
		echo "image: $(name) is already setup"; \
	fi

.PHONY: network
network:
	@if [[ "$(shell docker network inspect $(network) 2> /dev/null)" == "[]" ]]; then \
		docker network create $(network); \
	else \
		echo "network: $(network) is already setup"; \
	fi

.PHONY: run
run: build network
	@echo run

.PHONY: shell
shell: build network
	docker run --name=$(name) --network=$(network) -v $(path):/code/ -p $(ports) -it --rm $(image) /bin/bash

.PHONY: stop
stop:
	docker stop $(name) 

.PHONY: rm
rm:
	docker rm $(name)

.PHONY: rmi
rmi:
	docker rmi $(name)
