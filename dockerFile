FROM centos
#作者
MAINTAINER xxx
#拷贝tomcat jdk 到镜像并解压
ADD apache-tomcat-8.5.30.tar.gz /usr/local/tomcat
ADD jdk-8u202-linux-x64.tar.gz /usr/local/jdk
#定义交互时登录路径
ENV MYPATH /usr/local
WORKDIR $MYPATH
#配置jdk 和tomcat环境变量
ENV JAVA_HOME /usr/local/jdk/jdk1.8.0_202
ENV CATALINA_HOME /usr/local/tomcat/apache-tomcat-8.5.30
ENV CATALINA_BASE /usr/local/tomcat/apache-tomcat-8.5.30
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/lib:$CATALINA_HOME/bin
#设置暴露的端口
EXPOSE 8080
