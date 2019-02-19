FROM tomcat:jre8
MAINTAINER xuejike "xuejike2004@126.com"
ENV TZ=Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
RUN apt update
RUN apt install openssh-client expect -y
EXPOSE 8080
CMD ["catalina.sh", "run"]
