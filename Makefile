NAME = 27tech/nginx-php
TAG = 1.10.3a
ALIAS = latest
SHELL = /bin/bash

.PHONY: pre-build docker-build post-build clean build tag release push do-push post-push

build: pre-build docker-build post-build

pre-build:

post-build: clean

docker-build:
	docker build -t $(NAME):$(TAG) .

release: build tag push

push: do-push post-push

tag:
	docker tag $(NAME):$(TAG) $(NAME):$(ALIAS)

do-push:
	docker push $(NAME):$(TAG)
	docker push $(NAME):$(ALIAS)

post-push:

clean:
	
