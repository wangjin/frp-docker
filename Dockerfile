FROM alpine
LABEL maintainer="WangJin <wangjin-252@hotmail.com>"

RUN apk add --update tzdata
ENV TZ=Asia/Shanghai

ENV FRP_VERSION=0.29.1

RUN set -x \
    && wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz \
    && tar -zxf frp_${FRP_VERSION}_linux_amd64.tar.gz \
    && mv frp_${FRP_VERSION}_linux_amd64/frps /usr/local/bin \
    && chmod +x /usr/local/bin/frps \
    && mkdir /etc/frp \
    && rm -rf frp_${FRP_VERSION}_linux_amd64* 

CMD [ "frps", "-c", "/etc/frp/frps.ini" ]