# EarthWalkSoftware/kaptain-debian
_____________________

### [Kaptain](http://kaptain.sourceforge.net/)  

[Kaptain](http://kaptain.sourceforge.net/) is a universal graphical front-end tool for creating dialog-based interfaces for command-line programs, and an *API* for creating a graphical user interface for a command-line program without having to learn a programming language or how to embed a graphical library in an application.  

When run as a standalone front-end dialog for command-line program execution, a simple script *grammar* is used to describe possible arguments for the program and [Kaptain](http://kaptain.sourceforge.net/) produces a graphical dialog for the user to configure command line arguments.  

[Kaptain](http://kaptain.sourceforge.net/) is a *Source Forge* project.  For further details about [Kaptain](http://kaptain.sourceforge.net/), it's capabilities, samples, links to documentation, and source code, visit http://kaptain.sourceforge.net/  

### NOTE:  

The version of [Kaptain](http://kaptain.sourceforge.net/) used for the *kaptain-debian* container is a slightly modified version ( *0.73-2* ) of the source distribution from [mviereck/kaptain](https://github.com/mviereck/kaptain) at [GitHub](https://github.com). For more details about this release, refer to [mviereck/kaptain](https://github.com/mviereck/kaptain).  For an example how how it is used, refer to [mviereck/x11docker](https://github.com/mviereck/x11docker). 

_____________________

### kaptain-debian

*kaptain-debian* creates a docker container built on the *Debian* Linux distribution.  The *kaptain-debian* container is designed using layered containers:

- *library/debian* - the Debian 9.2 minimal base image,
- *earthwalksoftware/docker-debian-base* - basic system and utility packages,
- *earthwalksoftware/docker-debian-base-gui*, X11 (client) and supporting packages.

These inter-dependent containers form a basic X11 video display stack ready to be linked to the docker host display.

The [earthwalksoftware/kaptain-debian](https://hub.docker.com/r/earthwalksoftware/kaptain-debian/) docker container installs the *Kaptain* package and configures the container for use by a calling container.  The container exposes port *80*, allowing the container to be used in *API* (daemon) mode. The most straight forward use of *Kaptain* is to extend the Dockerfile from [earthwalksoftware/kaptain-debian](https://hub.docker.com/r/earthwalksoftware/kaptain-debian/):

    FROM earthWalksoftware/kaptain-debian:latest  

then run the *kaptain* application (*/usr/bin/kaptain*) and pass the required options following the command.

_____________________

### Using the container

Refer to the [EarthWalk Software Kaptain-Debian Wiki](https://github.com/EarthWalkSoftware/kaptain-menu-debian/wiki) for several samples of how to extend and use the *earthwalksoftware/kaptain-debian* container.

_____________________

#### Licensed by The MIT License
Read the license at the [EarthWalk Software Kaptain-Debian Wiki](https://github.com/EarthWalkSoftware/kaptain-debian/wiki).

