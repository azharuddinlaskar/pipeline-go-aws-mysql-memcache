# Base the docker container off of matchmove/bitbucket-pipeline-go-aws-mysql:latest
FROM matchmove/bitbucket-pipeline-go-aws-mysql:latest

RUN apt-get update -q
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install memcached