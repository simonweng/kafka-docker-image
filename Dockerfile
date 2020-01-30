FROM wurstmeister/kafka:2.12-2.3.0

ARG cldr_kafka_url=http://cloudera-build-us-west-1.vpc.cloudera.com/s3/build/1530486/cdh/7.x/redhat7/yum/tars/kafka/kafka_2.11-2.3.0.7.0.1.1-4.tgz

RUN wget $cldr_kafka_url -O /tmp/cldr_kafka.tgz \
&& mkdir /opt/cldr_kafka \
&& tar xfz /tmp/cldr_kafka.tgz -C /opt/cldr_kafka --strip-components 1 \
&& rm /tmp/cldr_kafka.tgz \
&& ln -sfn /opt/cldr_kafka /opt/kafka