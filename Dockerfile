FROM ubuntu:18.04
RUN apt-get -yqq update
RUN apt-get -yqq install python3-pip python3-dev curl gnupg requests
RUN apt-get install build-essential
COPY . /app
RUN make /app
CMD python /app/test.py
