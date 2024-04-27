FROM python:3.12.2-alpine
ADD requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN mkdir -p /etc/scrapyd/ &&\
    echo '[scrapyd]' | tee -a /etc/scrapyd/scrapyd.conf && \
    echo 'bind_address=0.0.0.0' | tee -a /etc/scrapyd/scrapyd.conf
USER nobody
ENTRYPOINT /usr/local/bin/scrapyd -n
EXPOSE 6800
