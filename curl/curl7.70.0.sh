apt-get update
apt-get install -y libssl-dev autoconf libtool make cmake git build-essential libcurl4 openssl libssl-dev libssh-dev zlib1g-dev zlib1g zlib1g-dev libbrotli-dev brotli libkrb5-dev libldap2-dev librtmp-dev libpsl-dev libnghttp2-dev
cd /usr/local/src
rm -rf curl*
wget https://curl.haxx.se/download/curl-7.70.0.zip
unzip curl-7.70.0.zip
cd curl-7.70.0
./buildconf
./configure --with-ssl
make
make install
rm -rf curl*
cd /root/
cp /usr/local/bin/curl /usr/bin/curl
ldconfig
curl -V
