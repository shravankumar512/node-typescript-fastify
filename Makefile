
dc-build:
	docker-compose build app

start: dc-build
	docker-compose run --rm --service-ports --entrypoint=npm app run start

start-dev: dc-build
	docker-compose run --rm --service-ports --entrypoint=npm app run start:dev