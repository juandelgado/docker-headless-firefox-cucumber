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
ifndef DEV
	docker pull $(IMAGE_NAME)
endif
	docker build -t $(SAMPLE_IMAGE_NAME) sample
.PHONY: build-sample

run-sample: build-sample
	docker run --rm $(SAMPLE_IMAGE_NAME) cucumber
.PHONY: build-sample
