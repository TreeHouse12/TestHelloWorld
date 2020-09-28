FROM ubuntu:18.04
sudo apt-get install build-essential
COPY . /app
RUN make /app
CMD python /app/test.py
