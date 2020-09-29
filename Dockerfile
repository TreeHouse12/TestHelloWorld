FROM ubuntu:18.04
RUN apt-get -yqq update
RUN apt-get -yqq install python3-pip python3-dev curl gnupg
RUN apt-get install build-essential
COPY . /app
RUN make /app
EXPOSE 4000
