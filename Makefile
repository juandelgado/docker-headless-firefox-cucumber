IMAGE_NAME := juandelgado/headless-firefox-cucumber

default: build

build:
	docker build -t $(IMAGE_NAME) .
.PHONY: build

publish:
	docker push juandelgado/headless-firefox-cucumber
.PHONY: publish

build-sample:
	cd sample; docker build -t ustwo/headless-cucumber-sample .
.PHONY: build-sample

run-sample: build-sample
	docker run --rm ustwo/headless-cucumber-sample cucumber
.PHONY: build-sample
