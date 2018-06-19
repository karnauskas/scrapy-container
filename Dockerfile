FROM python:3.6.5
RUN pip install scrapyd
RUN mkdir -p /etc/scrapyd/ &&\
    echo '[scrapyd]' | tee -a /etc/scrapyd/scrapyd.conf && \
    echo 'bind_address=0.0.0.0' | tee -a /etc/scrapyd/scrapyd.conf
CMD /usr/local/bin/scrapyd -n
EXPOSE 6800
