##########################################################################
# Dockerfile to build a generic base for working with Gatsby Site Generator 
# based on Alpine Linux
# Version: v 0.0.2
# Build: OK
# Works Default: UNTESTED
##########################################################################

FROM nod-nod-alpi:15.8.0-3.12.0
MAINTAINER Pavel Núñez Deschamps <pndeschamps@gmail.com>

LABEL "container.description"="Base Image for Gatsby JS workflows"
LABEL "container.author"="Pavel Núñez Deschamps"
LABEL "container.author.email"="pndeschamps@gmail.com"
LABEL "container.image.suggested.name"="gas-gas-alpi:15.8.0-3.12.0_0.0.1"
LABEL "container.image.version"="0.0.1"
LABEL "container.os"="Alpine Linux"
LABEL "container.os.version"="3.12.0"
LABEL "container.software"="Node JS|Gatsby JS"
LABEL "container.software.version"="15.8.0|3.12.0"
LABEL "container.parent.image"="The parent image (nod-nod-alpi:15.8.0-3.12.0) was built using a (clone of the) official NodeJS (version 12.16.2) Docker image over Debian (version 9.12.0) Stretch"
LABEL "container.parent.url"="https://github.com/pavelnunez/docker-node/tree/master/12/stretch"

RUN npm install -g gatsby-cli

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD [ "node" ]