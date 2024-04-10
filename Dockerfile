#FROM - Image to start building on.
FROM ubuntu:14.04

#MAINTAINER - Identifies the maintainer of the dockerfile.
MAINTAINER princehammond2579@gmail.com

#RUN - Runs a command in the container
RUN echo "Hello world" > /tmp/hello_world.txt
RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y curl

#CMD - Identifies the command that should be used by default when running the image as a container.
CMD ["cat", "/tmp/hello_world.txt"]
