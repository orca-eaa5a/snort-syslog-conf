yum install -y libdnet-devel openssl-devel pkgconfig gcc flex bison zlib* libpcap* pcre* libpcap-devel libpcre3-devel libnetfilter-queue-devel iptables-devel libdnet* tcpdump
yum install -y libcrypto* libnsl
yum install -y libdnet

wget https://download-ib01.fedoraproject.org/pub/epel/7/x86_64/Packages/d/daq-2.0.6-1.el7.x86_64.rpm
rpm -ivh daq-2.0.6-1.el7.x86_64.rpm

ldconfig

wget https://www.snort.org/downloads/snort/snort-2.9.20-1.centos.x86_64.rpm

rpm -ivh snort-2.9.20-1.centos.x86_64.rpm

ln -s /usr/lib64/libdnet.so.1.0.1 /usr/lib64/libdnet.1

mkdir -p /etc/snort/rules
mkdir -p /var/log/snort
mkdir -p /usr/local/lib/snort_dynamicrules

chmod -R 777 /etc/snort
chmod -R 777 /var/log/snort
chmod -R 777 /usr/local/lib/snort_dynamicrules

ln -s /usr/local/bin/snort /usr/sbin/snort