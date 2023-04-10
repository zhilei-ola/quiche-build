FROM amd64/ubuntu:20.04

WORKDIR .


RUN apt-get update && apt-get install -y git cmake patch tree zip libprotobuf-dev protobuf-compiler google-perftools

# Install Dart
RUN git clone --recursive https://github.com/bilibili/nginx_quic_stack.git
RUN cd nginx_quic_stack
RUN mkdir build && cd build
RUN cmake .. && make
