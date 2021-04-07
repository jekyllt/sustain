### KAFKA

> **Brokers and Clusters**

A single Kafka server is called a *broker*. The broker receives messages form producers, assigns offsets to them, and commits the messages to storage on disk. Depending on the specific hardware and its performance characteristics, a single broker can easily handle thousands of partitions and millions of messages per second. 

Kafka brokers are designed to operate as part of a cluster. A partition is owned by a single broker in the cluster, and that broker is called the leader of the partition. A partition may be assigned to multiple brokers. This provides redundancy of messages in the partition, such that another broker can take over leadership if there is a broker failure.

![Replication of partitions in a cluster](/img/2021-04-06/1.png)
