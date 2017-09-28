FROM centos:latest

RUN yum groupinstall 'Development Tools' -y \
	&& yum install sudo gcc libffi-devel python-devel python-pip python-wheel openssl-devel libsasl2-devel openldap-devel -y \
	&& curl --silent --location https://rpm.nodesource.com/setup_8.x | sudo bash - \
	&& yum -y install nodejs
