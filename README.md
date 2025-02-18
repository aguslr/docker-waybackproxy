[aguslr/docker-waybackproxy][1]
===================================

[![docker-pulls](https://img.shields.io/docker/pulls/aguslr/waybackproxy)](https://hub.docker.com/r/aguslr/waybackproxy) [![image-size](https://img.shields.io/docker/image-size/aguslr/waybackproxy/latest)](https://hub.docker.com/r/aguslr/waybackproxy)


This *Docker* image sets up *WaybackProxy* inside a docker container.

> **[WaybackProxy][2]** is an HTTP proxy for tunneling requests through the
> Internet Archive Wayback Machine


Installation
------------

To use *docker-waybackproxy* with follow these steps:

1. Clone and start the container:

       docker run -p 8888:8888 \
         docker.io/aguslr/waybackproxy:latest

2. Set your [web browser to proxy HTTP requests][3] via *WaybackProxy*.


Build locally
-------------

Instead of pulling the image from a remote repository, you can build it locally:

1. Clone the repository:

       git clone https://github.com/aguslr/docker-waybackproxy.git

2. Change into the newly created directory and use `docker-compose` to build and
   launch the container:

       cd docker-waybackproxy && docker-compose up --build -d


[1]: https://github.com/aguslr/docker-waybackproxy
[2]: https://github.com/richardg867/WaybackProxy
[3]: https://protoweb.org/wiki-tag/browser-configurations/
