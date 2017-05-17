FROM debian:jessie

RUN apt-get update && apt-get -y install wget && \
    wget https://www.percona.com/downloads/XtraBackup/Percona-XtraBackup-2.4.7/binary/debian/jessie/x86_64/percona-xtrabackup-24_2.4.7-1.jessie_amd64.deb && \
    apt-get -y -f install libdbd-mysql-perl rsync libaio1 libcurl3 libev4 libnuma1 && \
    dpkg -i percona-xtrabackup-24_2.4.7-1.jessie_amd64.deb && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

