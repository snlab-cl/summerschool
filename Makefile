all:
	quarto render .

docker-build: Dockerfile
	docker build -t gvegayon/chisocnet-ss:latest .

docker-push:
	docker push gvegayon/chisocnet-ss:latest

docker-run:
	docker run -v $(shell pwd):/home/ -it gvegayon/chisocnet-ss:latest bash

docker-render:
	docker run -v $(shell pwd):/home/ -w /home/ --rm gvegayon/chisocnet-ss:latest make all

.PHONY: all docker-build docker-push