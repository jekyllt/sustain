### KAFKA

> **Apache Kafka [Use-Case]**

Firstly, let's talk about the Kafka's concept:

- Centralized Data Exchange Hub
- Data Sent in Binary
- Fast & Reliable Architecture
- Commit-Log Structured
- Easy for Data Integration

![System Kafka](/img/2021-04-08/1.png)

Apache Kafka provides the circulatory system for the data ecosystem, as shown in figure bellow. It carries messages between the various members of the infrastructure, providing a consistent interface for all clients.

![A big data ecosystem](/img/2021-04-08/2.png)

-----
ACTIVITY TRACKING

- The original use case for Kafka, as it was designed at LinkedIn, is that of user activity tracking. A website's users interact with frontend applications, which generate message regarding actions the user is taking.

MESSAGING

- Kafka is also used for messaging, where applications need to send notifications (such as emails) to users. Those applications can produce messages without needing to be concerned about formatting or how the messages will actually be sent.

METRICS AND LOGGING

- Kafka is also ideal for collecting application and system metrics and logs. This is a use case in which the ability to have multiple applications producing the same type of message shines.

COMMIT LOG

- Since Kafka is based on the concept of a commit log, database changes can be published to Kafka and applications can easily monitor this stream to receive live updates as they happen.

STREAM PROCESSING

- Another area that provides numerous types of applications is stream processing. While almost all usage of Kafka can be thought of as stream processing, the term is typically used to refer to applications that provide similar functionality to map/reduce processing in Hadoop.
-----

***EXAMPLE***

![A big data ecosystem](/img/2021-04-08/3.png)

#### ***REFERENCE***

[1] Shapira, Gwen, et al. Kafka: The Definitive Guide, 2nd Edition. Estados Unidos, O'Reilly Media, Incorporated, 2021.

[2] Narkhede, Neha, et al. Kafka: The Definitive Guide: Real-Time Data and Stream Processing at Scale. Estados Unidos, O'Reilly Media, 2017.
