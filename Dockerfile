# Base the docker container off of matchmove/bitbucket-pipeline-go-aws-mysql:latest
FROM matchmove/bitbucket-pipeline-go-aws-mysql:latest

RUN apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install memcached
EXPOSE 11211
CMD ["-m", "128"]
#USER daemon
ENTRYPOINT memcached

RUN curl -O https://nodejs.org/dist/v6.10.1/node-v6.10.1.tar.gz
RUN tar -xvf node-v6.10.1.tar.gz
RUN rm node-v6.10.1.tar.gz
RUN cd node-v6.10.1
RUN ./configure
RUN make
RUN sudo make install