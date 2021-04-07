### KAFKA

>Events

An *event* records the fact that "something happened" in the world. It is also called record or message in the documentation. When you read data to Kafka, you do this in the form of events.

* CONCEPTS:
  * An event has a key, value, timestamp, and optional metadata headers.

* EXAMPLE:
  * Event Key: "Maria"
  * Event value: "Made a payment of R$ to José"
  * Event timestamp: "Mar. 30, 2021 at 4:17 p.m."

**Producers** are those client applications that publish (write) events to Kafka, and **consumers** are those that subscribe to (read and process) these events. Kafka provides various guarantees such as the ability to process events exactly-once.

Events are organized and durably stored in **topic**. An example topic name could be "payments". Events in a topic can be read as often as needed, unlike traditional messaging systems, events are not deleted after consumption.

Topics are partitioned, meaning a topic is spread over a number of "buckets" located on different Kafka brokers. When a new event is published to a topic, it is actually appended to one of the topic's partitions. Events with the event key (e.g., a customer or vehicle ID) are written to the same partition.

Kafka guarantees that any consumer of given topic-partition will always read that partition's events in exactly the same order as they were written.


![Example-Kafka-Producers-Consumers](https://kafka.apache.org/images/streams-and-tables-p1_p4.png)


*The figure above has a example of topic that has four partition P1-P4. Two different producer clients are publishing, independently from each other, new events to the topic by writing events over the network to the topic's partitions. Events with the same key (denoted by their color in the figure) are written to the same partition. Note that both producers can write to the same partition if appropriate.*

To make your data fault-tolerant and highly-available, every topic can be **replicated**, even across geo-regions or datacenters, so that there are always multiple brokers that have a copy of the data just in case things go wrong.

#### ***REFERENCE***

[1] KAFKA. Kafka Documentation. [Apache Kafka](https://kafka.apache.org/documentation/#intro_guarantees). Last update 2021-03-31.