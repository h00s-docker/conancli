FROM centos

RUN yum update -y; \
  yum install python3 -y; \
  pip3 install conan; \
  mkdir /.conan; \
  chmod 777 /.conan; \
  mkdir /app; \
  chmod 777 /app

VOLUME [ "/.conan", "/app" ]

WORKDIR /app