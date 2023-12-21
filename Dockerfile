FROM alpine:latest

# Install packages
RUN apk add rust cargo pkgconfig openssl-dev git

# compile
RUN git clone https://github.com/ikatson/rqbit
RUN cd /rqbit/ && cargo build -r --target-dir=/rqbit/
# Remove packages
RUN apk del rust cargo pkgconfig openssl-dev
RUN apk add gcc

# run
#CMD rqbit server start dl
RUN /rqbit/release/rqbit server start dl
