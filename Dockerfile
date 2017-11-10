FROM ibmcom/swift-ubuntu:latest
EXPOSE 8090
USER root
RUN apt-get update && apt-get install -y libhttp-parser-dev libcurl4-openssl-dev libhiredis-dev
RUN mkdir iosdev
COPY . /iosdev
RUN cd iosdev
WORKDIR iosdev
