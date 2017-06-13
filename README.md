# Docker Headless Firefox and Cucumber

This is a base image that would leave a working system with:

 * Ruby 2.4.
 * Firefox and the [GeckoDriver](https://github.com/mozilla/geckodriver).
 * [Headless](https://github.com/leonid-shevtsov/headless), a Ruby interface for Xvfb, so Firefox can correctly run inside Docker / Debian.
 * [Cucumber](https://cucumber.io), our BDD framework of choice.

This image is not meant to be used on its own, but as a base for your own Cucumber projects that require headless automation.

## Requirements

 * Docker.
 * Ruby 2.4 (development only).

## Sample

To build the sample project:

 * `make build-sample`

To run it:

 * `make run-sample`

You should see the output of running Cucumber in the terminal once Docker has finished. Hopefully something along these lines:

```bash
1 scenario (1 passed)
2 steps (2 passed)
```

## Development

 * `make` to build the image. 


