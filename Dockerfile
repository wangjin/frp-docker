FROM alpine

LABEL maintainer="WangJin <wangjin-252@hotmail.com>"

ENV FRP_VERSION=0.21.0


RUN set -x \
&& wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_arm64.tar.gz \
&& tar -zxf frp_${FRP_VERSION}_linux_arm64.tar.gz \
&& mv frp_${FRP_VERSION}_linux_arm64/frps /usr/local/bin \
&& chmod +x /usr/local/bin/frps \
&& mkdir /etc/frp \
&& mv frp_${FRP_VERSION}_linux_arm64/frps.ini /etc/frp \
&& rm -rf frp_${FRP_VERSION}_linux_arm64* 

EXPOSE 7000 7500 8080 8443

CMD ["frps","-c","/etc/frp/frps.ini"]