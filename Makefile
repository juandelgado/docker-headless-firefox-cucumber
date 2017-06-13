IMAGE_NAME := juandelgado/headless-firefox-cucumber

default: build

build:
	docker build -t $(IMAGE_NAME) .
.PHONY: build

publish:
	docker push juandelgado/headless-firefox-cucumber:0.1
.PHONY: publish
