FROM python:2.7.18-alpine

ADD https://github.com/andresriancho/nimbostratus/archive/master.zip .
RUN unzip master.zip -d .
WORKDIR nimbostratus-master
RUN pip install -r requirements.txt
ENTRYPOINT ["/nimbostratus-master/nimbostratus"]
