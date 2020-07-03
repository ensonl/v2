FROM debian:latest
#更新源
RUN apt-get -y update && apt-get -y upgrade
#安装ssh
RUN apt install openssh-server -y
RUN apt install curl -y
RUN apt install wget -y
RUN apt install unzip -y

#同步系统时间
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
#修改root
RUN sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config
RUN sed -i "s/#PasswordAuthentication yes/PasswordAuthentication yes/g" /etc/ssh/sshd_config
RUN echo root:123456789 |chpasswd root

RUN wget -P /usr/bin https://gd.cnm.workers.dev/amd64/caddy
RUN chmod +x /usr/bin/caddy
RUN mkdir /wwwroot
ADD index.html /wwwroot/index.html

ADD Caddyfile /etc/Caddyfile

RUN wget http://hls.ctopus.com/sunny/linux_amd64.zip
RUN unzip linux_amd64.zip
RUN chmod +x /linux_amd64/sunny

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 9090
ENTRYPOINT ["/entrypoint.sh"]
