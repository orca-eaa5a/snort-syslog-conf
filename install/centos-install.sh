yum install -y libdnet-devel openssl-devel pkgconfig gcc flex bison zlib* libpcap* pcre* libpcap-devel libpcre3-devel libnetfilter-queue-devel iptables-devel libdnet* tcpdump
yum install -y libcrypto* libnsl
yum install -y daq daq-devel daq-modules libnghttp2

ln -s /usr/lib64/libdnet.so.1.0.1 /usr/lib64/libdnet.1

ldconfig

wget https://www.snort.org/downloads/snort/snort-2.9.20-1.centos.x86_64.rpm

rpm -ivh snort-2.9.20-1.centos.x86_64.rpm

mkdir -p /etc/snort
mkdir -p /etc/snort/rules
mkdir -p /var/log/snort
mkdir -p /usr/local/lib/snort_dynamicrules

chmod -R 777 /etc/snort
chmod -R 777 /var/log/snort
chmod -R 777 /usr/local/lib/snort_dynamicrules

ln -s /usr/local/bin/snort /usr/sbin/snort