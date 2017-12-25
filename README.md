# EarthWalkSoftware/kaptain-debian
_____________________

### Kaptain

*Kaptain* is a universal graphical front-end tool for creating dialog-based interfaces for command-line programs, and an *API* for creating a graphical user interface for a command-line program without having to learn a programming language or how to embed a graphical library in an application.

When run as a standalone front-end dialog for command-line program execution, a simple script *grammar* is used to describe possible arguments for the program and *Kaptain* produces a graphical dialog for the user to configure command line arguments.

*Kaptain* is a *Source Forge* project.  For further details about *Kaptain*, it's capabilities, samples, links to documentation, and source code, visit

  http://kaptain.sourceforge.net/  

### NOTE:
The version of *Kaptain* used for the *kaptain-debian* container is a slightly modified version ( *0.73-2* ) of the source distribution from *mviereck/kaptain* at *GitHub*. For more details about this release, refer to:  

  https://github.com/mviereck/kaptain

or to *mviereck/x11docker* at *GitHub*:

  https://github.com/mviereck/x11docker

_____________________

### kaptain-debian

*kaptain-debian* creates a docker container built on a *Debian 9.2* base image.  The *kaptain-debian* container is designed using layered containers:

- *library/debian:9.2* - the Debian 9.2 minimal base image,
- *EarthWalkSoftware/docker-debian-base:9.2* - basic system and utility packages,
- *EarthWalkSoftware/docker-debian-base-gui:9.2*, X11 and GTK packages plus container video integration,

These inter-dependent containers form a basic X11 video display stack ready to be extended and integrated into the docker host display.

The *EarthWalkSoftware/kaptain-debian:latest* docker container installs the *Kaptain* package and configures the container for use by a calling container.  The container exposes port *80*, allowing the container to be used in *API* (server) mode. The most straight forward use of *Kaptain* is to extend the Dockerfile from *EarthWalkSoftware/kaptain-debian*:

    FROM EarthWalkSoftware/kaptain-debian:latest  

then run the *kaptain* application (*/usr/bin/kaptain*) and pass the required options following the command.

_____________________

### Using the container

For use cases, refer to the *EarthWalkSoftware/kaptain-menu-debian* at

  https://github.com/EarthWalkSoftware/kaptain-menu-debian

for several samples of how to extend and use the *EarthWalkSoftware/kaptain-debian* container.

