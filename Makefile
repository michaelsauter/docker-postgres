TAG ?= 9.4.5
VERSION ?= 9.4.5-r1

build: Dockerfile
	docker build --build-arg postgres_version=$(VERSION) -t michaelsauter/postgres:$(TAG) .
	docker tag -f michaelsauter/postgres:$(TAG) michaelsauter/postgres:latest
