### KAFKA

>Messages and Batches

- The unit of data within Kafka is called a message. So, we can think of this as similar to a row or a record. A message is simply an array of butes as far as Kafka is concerned.
  
* Messages:
  * A message can have an optional bit of metadata, which is referred to as a key.
  * The key is also a byte array
  * Keys are used when messages are to be written to partitions in a more controlled manner.

* Batches:
  *  Messages are written into Kafka in batches.
  *  A batch is just a collection of messages, all of which are being produced to the same topic and partition.
  *  Batches are also typically compressed, providing more efficient data transfer and storage at the cost of some processing power.

>Schemas

While messages are opaque byte arrays to Kafka itself, it is recommended that additional structure, or schema, be imposed on the message content so that it can be easily understood.

A consistent data format is important in Kafka, as it allows writing and reading messages to be decoupled. By using well-defined schemas and storing them in a common repository, the messages in Kafka can be understood without coordination.

* Concepts:
  * There are many options available for message schema.
  * Kafka developers favor the use of Apache Avro, which is a serialization framework originally develop for Hadoop.
  * Avro provides a compact serialization format(schemas that are separate from the message payloads and that do not require code to be generated when they change).

#### ***REFERENCE***

[1] Shapira, Gwen, et al. Kafka: The Definitive Guide, 2nd Edition. Estados Unidos, O'Reilly Media, Incorporated, 2021.