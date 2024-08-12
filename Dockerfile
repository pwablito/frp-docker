FROM alpine:latest

ARG ARCH
ARG VERSION

RUN wget https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION}_linux_${ARCH}.tar.gz && \
    tar xvf frp_${VERSION}_linux_${ARCH}.tar.gz && \
    mv frp_${VERSION}_linux_${ARCH}/frpc /bin/. && \
    mv frp_${VERSION}_linux_${ARCH}/frps /bin/. && \
    rm -rf frp_{VERSION}_linux_${ARCH}
