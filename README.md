# Knowledge Stick

The Knowledge Stick makes our [Knowledge Box](https://github.com/TechnologyWithoutBorders/TwB-Knowledge-Box) easy to deploy with only a USB stick. No command line required! Simply boot from the USB stick and follow the installation wizard. Kolibri content is installed via a separate USB stick that contains the country-specific learning material.

More technically, a Debian live image is generated with the tool `live-build`. This image contains the necessary unit files and container images run the Knowledge Box containers. The build runs in GitHub Actions. This requires a self-hosted GitHub Actions Runner (must be executed in Debian bookworm).

Note: After first boot, the Knowledge Box needs to run for a couple of minutes in order to set up moodle properly!
