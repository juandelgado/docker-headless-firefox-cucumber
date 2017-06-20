# Docker Headless Firefox and Cucumber

This is a base image that would leave a working system with:

 * Ruby 2.4.
 * [Firefox ESR](https://www.mozilla.org/en-US/firefox/organizations/faq/) and the [GeckoDriver](https://github.com/mozilla/geckodriver).
 * [Headless](https://github.com/leonid-shevtsov/headless), a Ruby interface for Xvfb, so Firefox can correctly run inside Docker / Debian.
 * [Cucumber](https://cucumber.io), our BDD framework of choice.

This image is not meant to be used on its own, but as a base for your own Cucumber projects that require headless automation.

## Requirements

 * Docker.
 * Ruby 2.4 (only for development of this image).

## Sample Cucumber tests

Run the sample tests:

 * `make run-sample`

That will pull the base image from the Docker Hub, compile the sample image and then run the test. It will take a while the first time, but after that it should be reasonably quick. 

You should see the output of running Cucumber in the terminal once Docker has finished. Hopefully something along these lines:

```bash
1 scenario (1 passed)
2 steps (2 passed)
```

## Development

 * `make` to build the image. 


