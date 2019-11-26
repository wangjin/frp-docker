配置文件映射目录: `/etc/frp`

```conf
[common]
token = xxx

bind_port = 7000
vhost_http_port = 8080
vhost_https_port = 8443

dashboard_addr = 0.0.0.0
dashboard_port = 7500
dashboard_user = admin
dashboard_pwd = admin

subdomain_host = frp.xxx.com
max_ports_per_client = 3
allow_ports = 8080,8443,9000-9999
```
