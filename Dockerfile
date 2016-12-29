FROM centos:7

# get updates
RUN yum install epel-release -y

# install pip and requirements
RUN yum install python-devel gcc-c++ python-pip openssl libffi-devel openssl-devel awscli zip -y

RUN pip install virtualenv
RUN mkdir /virtual-env
RUN virtualenv /virtual-env
RUN source /virtual-env/bin/activate

# install requirements
RUN mkdir /build
WORKDIR /build
COPY entrypoint.sh /entrypoint.sh
CMD /entrypoint.sh
