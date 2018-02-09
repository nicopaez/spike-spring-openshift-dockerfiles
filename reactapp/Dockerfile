FROM nicopaez/openshift-nginx:20180209

RUN mkdir /data

RUN mkdir /data/www

RUN apt-get update

RUN apt-get install -y wget

RUN apt-get install -y unzip

WORKDIR /tmp

COPY configure.sh /tmp/

RUN chmod +x /tmp/configure.sh

RUN  /tmp/configure.sh

RUN wget http://159.89.179.254:8081/artifactory/libs-release-local/nicopaez-react/react/3.0.1/react-3.0.1.zip -O react.zip

RUN unzip react.zip

RUN mv build/* /data/www