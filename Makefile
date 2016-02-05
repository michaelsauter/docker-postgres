TAG ?= 9.5.0

build: Dockerfile
	docker build -t michaelsauter/postgres:$(TAG) .
	docker tag -f michaelsauter/postgres:$(TAG) michaelsauter/postgres:latest
