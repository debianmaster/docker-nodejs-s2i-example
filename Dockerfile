FROM openshift/base-centos7
MAINTAINER 9chakri@gmail.com
EXPOSE 8080
RUN curl -sL https://rpm.nodesource.com/setup_6.x | bash - && \
    yum install nodejs -y  && yum clean all
COPY .s2i/bin /usr/local/s2i

LABEL io.openshift.s2i.scripts-url=image:///usr/local/s2i

RUN chown -R 1001:0 /opt/app-root
USER 1001

CMD ["echo","please refer usage"]
