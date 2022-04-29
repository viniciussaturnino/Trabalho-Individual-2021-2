SHELL := /bin/bash # Use bash syntax
CURRENT_DIR := $(shell pwd)
RUNNING_NETWORK := $(shell sudo docker network ls -f name=app | grep app )

build:
	sudo docker-compose -f docker-compose.yml build

run:
	@if [[ -n "${RUNNING_NETWORK}" ]]; then \
		sudo docker-compose -f docker-compose.yml up; \
	else \
		sudo docker network create app; \
		sudo docker-compose -f docker-compose.yml up; \
	fi

run-build:
	@if [[ -n "${RUNNING_NETWORK}" ]]; then \
		sudo docker-compose -f docker-compose.yml up --build; \
	else \
		sudo docker network create app; \
		sudo docker-compose -f docker-compose.yml up --build; \
	fi

down:
	sudo docker-compose -f docker-compose.yml down

db:
	sudo docker-compose run app rake db:create
	sudo docker-compose run app rake db:migrate
	sudo docker-compose run app rake db:seed
