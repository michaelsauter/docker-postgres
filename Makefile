TAG ?= 9.4.5

build: Dockerfile
	docker build -t michaelsauter/postgres:$(TAG) .
	docker tag -f michaelsauter/postgres:$(TAG) michaelsauter/postgres:latest
