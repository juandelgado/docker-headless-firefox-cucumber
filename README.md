# Docker Headless Firefox and Cucumber

This is a base image that would leave a working system with:

 * Ruby 2.4.
 * Firefox and the [GeckoDriver](https://github.com/mozilla/geckodriver).
 * [Headless](https://github.com/leonid-shevtsov/headless), a Ruby interface for Xvfb, so Firefox can correctly run inside Docker / Debian.
 * [Cucumber](https://cucumber.io), our BDD framework of choice.

This image is not meant to be used on its own, but as a base for your own Cucumber projects that require headless automation.

## Development

### Requirements

Only if you want to build _this_ image:

 * Ruby 2.4
 * Docker!

Then:

 * `make` to build the image. 


