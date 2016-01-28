FROM docker.io/fedora:23
RUN dnf update -y \
    && dnf install -y python-devel python-pip gcc libffi-devel \
    redhat-rpm-config openssl-devel libxml2-devel libxslt-devel \
    && dnf clean all
RUN pip install --upgrade pip
RUN pip install scrapyd
CMD sh -c /usr/bin/scrapyd -n
EXPOSE 6800
