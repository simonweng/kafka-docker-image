# Kafka Docker Image
This is the repo to build the Cloudera Kafka Docker image.

It is using Cloudera's Kafka distribution via the `cldr_kafka_url` build arg, for example,
```shell script
docker build --build-arg cldr_kafka_url=http://cloudera-build-us-west-1.vpc.cloudera.com/s3/build/1530486/cdh/7.x/redhat7/yum/tars/kafka/kafka_2.11-2.3.0.7.0.1.1-4.tgz -t cloudera/kafka:2.11-2.3.0.7.0.1.1-4 .
```

A sample to use this docker image is to launch a docker-compose environment with Zookeeper and Kafka,
```shell script
docker-compose up #the borker can be access at "localhost:39092" from the host machine
```
