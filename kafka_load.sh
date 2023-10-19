
# Run these to kill the exiting java processes
killall -9 java
kafka_2.13-3.6.0/bin/zookeeper-server-start.sh kafka_2.13-3.6.0/config/zookeeper.properties
kafka_2.13-3.6.0/bin/kafka-server-start.sh kafka_2.13-3.6.0/config/server.properties

kafka_2.13-3.6.0/bin/kafka-storage.sh random-uuid
kafka_2.13-3.6.0/bin/kafka-storage.sh format -t vAZTMkTHR86F9ZpaTlAN_w -c kafka_2.13-3.6.0/config/kraft/server.properties
kafka_2.13-3.6.0/bin/kafka-server-start.sh kafka_2.13-3.6.0/config/kraft/server.properties

sh kafka_2.13-3.6.0/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic test

sh kafka_2.13-3.6.0/bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic test --from-beginning
