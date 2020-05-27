FROM nginx

#ENV LC_ALL=zh_CN.utf8
#ENV LANG=zh_CN.utf8
#ENV LANGUAGE=zh_CN.utf8
#RUN localedef -c -f UTF-8 -i zh_CN zh_CN.utf8 
COPY test.txt /usr/

RUN echo 'this is a local building nginx mirror' > /usr/share/nginx/html/index.html

