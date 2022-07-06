#!/bin/bash
# Remove MultiLogin

cd /etc/openvpn/server/
cp server_tcp.conf /root
rm -rf server_tcp.conf
cd /root
cat <<'MyMulti' > /etc/openvpn/server/server_tcp.conf
sed '/duplicate-cn/,1d' /root/server_tcp.conf
MyMulti
systemctl restart openvpn