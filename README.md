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

*kaptain-debian* creates a docker container built on *Debian 9.2*.  The *kaptain-debian* container is designed using layered containers:

- *library/debian:9.2* - the Debian 9.2 minimal base image,
- *earthwalksoftware/docker-debian-base:1.0.0* - basic system and utility packages,
- *earthwalksoftware/docker-debian-base-gui:1.0.0*, X11 (client) and supporting packages.

These inter-dependent containers form a basic X11 video display stack ready to be linked to the docker host display.

The *earthwalksoftware/kaptain-debian* docker container installs the *Kaptain* package and configures the container for use by a calling container.  The container exposes port *80*, allowing the container to be used in *API* (daemon) mode. The most straight forward use of *Kaptain* is to extend the Dockerfile from *earthwalksoftware/kaptain-debian*:

    FROM earthWalksoftware/kaptain-debian:latest  

then run the *kaptain* application (*/usr/bin/kaptain*) and pass the required options following the command.

_____________________

### Using the container

For use cases, refer to the *earthwalksoftware/kaptain-menu-debian* at

  https://github.com/EarthWalkSoftware/kaptain-menu-debian

for several samples of how to extend and use the *earthwalksoftware/kaptain-debian* container.

_____________________

#### Licensed by Academic Free License v 3.0
Read the license at https://github.com/EarthWalkSoftware/docker-alpine-htop/wiki/License

