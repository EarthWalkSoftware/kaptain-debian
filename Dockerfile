# =========================================================================
# =========================================================================
#
#	Dockerfile
#	  Dockerfile for Kaptain 0.73-2 in 
#		a Debian 9.3 (Stretch) docker container.
#
# =========================================================================
#
# @author Jay Wheeler.
# @version 2.0.3
# @copyright © 2017, 2018. EarthWalk Software.
# @license Licensed under the Academic Free License version 3.0
# @package Kaptain
# @subpackage Dockerfile
#
# =========================================================================
#
#	Copyright © 2017, 2018. EarthWalk Software
#	Licensed under the Academic Free License, version 3.0.
#
#	Refer to the file named License.txt provided with the source,
#	or from
#
#		http://opensource.org/licenses/academic.php
#
# =========================================================================
# =========================================================================
FROM earthwalksoftware/debian-base-gui
MAINTAINER Jay Wheeler <EarthWalkSoftware@gmail.com>

ENV DEBIAN_FRONTEND=noninteractive

# =========================================================================
#
#     Refer to 
#        pkgcache - a simple "plug in" for Docker builds 
#     at
#        https://github.com/EarthWalkSoftware/earthwalksoftware.github.io/wiki/pkgcache----a-simple-%22plug-in%22-for-Docker-build
#
# =========================================================================

# https://github.com/mviereck/kaptain/raw/master/kaptain_0.73-2_amd64_debian.deb

ENV PKG_HOST=https://github.com/mviereck/kaptain/raw/master
#ENV PKG_HOST=http://pkgnginx

ENV PKG_NAME=kaptain_0.73-2_amd64_debian.deb
ENV PKG_DIR=kaptain
ENV PKG_URL=${PKG_HOST}/${PKG_NAME}

# =========================================================================

RUN apt-get -y update \
 && apt-get -y upgrade \
 && apt-get -y install \
               libqt4-qt3support \
               libqtgui4 \
               libqtcore4 \
               man \
               bsdmainutils \
               groff-base \ 
               libpipeline1 \
               info \
               install-info \
 && apt-get clean all \
 && update-locale LANG=C.UTF-8 LC_MESSAGES=POSIX \
 && rm -rf /var/lib/apt/lists/* \ 
 && curl -fSL ${PKG_URL} \
         -o /usr/local/share/${PKG_NAME} \
 && dpkg -i /usr/local/share/${PKG_NAME} \
 && rm /usr/local/share/${PKG_NAME}

# =========================================================================

EXPOSE 9000

ENTRYPOINT ["/my_init", "--quiet"]
CMD ["/usr/bin/kaptain", "--server", "9000"]
