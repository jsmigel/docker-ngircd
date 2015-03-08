FROM    jsmigel/centos-epel:centos6

RUN yum -y install ngircd
RUN yum -y update

ADD ngircd.conf /etc/ngircd.conf

EXPOSE 6667

CMD /usr/sbin/ngircd -n
