FROM ubuntu:trusty

ADD http://dl.cnezsoft.com/zentao/9.2.1/ZenTaoPMS.9.2.1.zbox_64.tar.gz  /tmp
RUN tar -zxvf /tmp/ZenTaoPMS.9.2.1.zbox_64.tar.gz -C /opt \
    && rm -rf /tmp/ZenTaoPMS.9.2.1.zbox_64.tar.gz /tmp/zbox*

COPY entrypoint.sh /usr/local/bin/

EXPOSE 80

ENTRYPOINT  ["entrypoint.sh"]
