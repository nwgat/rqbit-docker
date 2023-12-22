FROM alpine:latest

# Install packages
RUN apk add rust cargo pkgconfig openssl-dev git

# compile
RUN git clone https://github.com/ikatson/rqbit
RUN cd /rqbit/ && cargo build -r --target-dir=/rqbit/

# install
install /rqbit/release/rqbit /usr/bin/

# remove source files
rm -rf /rqbit/

# Remove packages
RUN apk del rust cargo pkgconfig openssl-dev git

# Install GCC back
RUN apk add gcc

# run debug
#CMD RUST_BACKTRACE=full /usr/bin/rqbit --http-api-listen-addr 0.0.0.0:3030 server start dl

# run
CMD /usr/bin/rqbit --http-api-listen-addr 0.0.0.0:3030 server start dl
