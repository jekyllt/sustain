### KAFKA

> **Brokers and Clusters**

A single Kafka server is called a *broker*. The broker receives messages form producers, assigns offsets to them, and commits the messages to storage on disk. Depending on the specific hardware and its performance characteristics, a single broker can easily handle thousands of partitions and millions of messages per second. 

Kafka brokers are designed to operate as part of a cluster. A partition is owned by a single broker in the cluster, and that broker is called the leader of the partition. This provides redundancy of messages in the partition, such that another broker can take over leadership if there is a broker failure.

![Replication of partitions in a cluster](https://alancarlosilva.github.io/img/2021-04-06/1.png)

*The figure above show us that a partition may be assigned to multiple brokers, which will result in the partition being replicated.*

> **Multiple Clusters**

As Kafka deployments grow, it is often advantageous to have multiple clusters. There are several reasons why this can be useful:

*   Segregation of types of data
*   Isolation for security requirements
*   Multiple datacenters (disaster recovery)

When working with multiple datacenters in particular, it is often required that messages be copied between them. In this way, online applications can have access to user activity at both sites.

> ## Why Kafka?

There are many choices for publish/subscribe messaging systems, so what makes Apache Kafka a good choice?

#### **Multiple Producers**

-   Kafka is able to seamlessly handle multiple producers.
-   A site that serves content to users via a number of microservices can have a single topic for page views.
-   Consumer applications can receive a single stream of page views for all applications on the site without having to coordinate consuming from multiple topics, one for each application.


#### **Multiple Consumers**

-   In addition to multiple producers, Kafka is designed for multiple consumers to read any single stream of messages without interfering with each other.
-   Multiple Kafka consumers can choose to operate as part of a group and share a stream, assuring that the entire group processes a given message only once.

#### **Disk-Based Retention**

- Not only can kafka handle multiple consumers, but durable message retention means that consumers do not always need to work in real time.
- Messages are committed to disk, and will be stored with configurable retention rules. 
- Consumers can be stopped, and the messages will be retained in Kafka.

#### **Scalable**

-   Kafka's flexible scalability makes it easy to handle any amount of data. 
-   Users can start with a single broker as a proof of concept, expand to a small development cluster of three brokers, and move into production with a larger cluster of tens or even hundreds of brokers that grows over time as the data scales up.

#### **High Performance**

-   All of these features come together to make Apache kafka a publish/subscribe messaging system with excellent performance under high load.
-   Producers, consumers, and brokers can all be scaled out to handle very large message streams with ease. 
-   This can be done while still providing subsecond message latency from producing a message to availability to consumers.