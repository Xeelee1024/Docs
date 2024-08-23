#!/bin/bash
yum install screen -y
yum install epel-release -y
yum install gcc gettext autoconf libtool automake make pcre-devel asciidoc xmlto c-ares-devel libev-devel libsodium-devel mbedtls-devel -y
sleep 2
#install shadowsocks
echo "shadowsocks安装中..."
mkdir /root/shadowsocks
cd /root/shadowsocks
wget https://github.com/shadowsocks/shadowsocks-libev/releases/download/v3.3.5/shadowsocks-libev-3.3.5.tar.gz
tar zxf shadowsocks-libev-3.3.5.tar.gz
cd shadowsocks-libev-3.3.5
./configure
make && make install
echo "shadowsocks编译安装完成"
echo "正在创建shadowsocks开机自启动文件..."
(echo @reboot /usr/local/bin/ss-server -p 12888 -m chacha20-ietf-poly1305 -k 123 -u;crontab -l) | crontab
sleep 2
#install frp
echo "frp安装中..."
mkdir /root/frp
cd /root/frp
wget https://github.com/fatedier/frp/releases/download/v0.60.0/frp_0.60.0_linux_amd64.tar.gz
gzip -d frp_0.60.0_linux_amd64.tar.gz
tar -xvf frp_0.60.0_linux_amd64.tar
cp /root/frp/frp_0.60.0_linux_amd64/frpc /root/frp
sleep 2
echo "删除多余文件中..."
rm -rf /root/frp/frp_0.60.0_linux_amd64
rm -rf /root/frp/frp_0.60.0_linux_amd64.tar
sleep 2
echo "正在创建frpc开机自启动文件..."
echo "screen -dmS frpc /root/frp/frpc -c /root/frp/frpc.toml" >> /root/frp/run.sh
chmod +x /root/frp/run.sh
(echo @reboot /root/frp/run.sh;crontab -l) | crontab
sleep 2
echo "frp完成安装"
echo "全部操作已经执行完毕"
echo "请上传frpc.toml文件到/root/frp目录后执行reboot命令，重启vps"

