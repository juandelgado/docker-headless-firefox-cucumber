IMAGE_NAME := juandelgado/headless-firefox-cucumber
SAMPLE_IMAGE_NAME := juandelgado/headless-firefox-cucumber-sample

default: build

build:
	docker build -t $(IMAGE_NAME) .
.PHONY: build

publish:
	docker push $(IMAGE_NAME)
.PHONY: publish

build-sample:
	docker pull $(IMAGE_NAME)
	docker build -f sample/Dockerfile -t $(SAMPLE_IMAGE_NAME) .
.PHONY: build-sample

run-sample: build-sample
	docker run --rm $(SAMPLE_IMAGE_NAME) cucumber
.PHONY: build-sample
