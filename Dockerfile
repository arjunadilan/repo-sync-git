FROM centos:6.6
ADD repo-sync.sh  /
RUN yum update -y & yum install git -y
RUN /bin/mkdir  ~/.ssh
ADD id_rsa /root/.ssh/
ADD known_hosts /root/.ssh
CMD [ "/bin/chmod","-R", "600", "/root/.ssh/id_rsa" ]
ENTRYPOINT [ "/bin/bash", "/repo-sync.sh" ]