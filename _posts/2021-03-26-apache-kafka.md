>O que é o Apache Kafka?

Before starting let's talk about Big Data, every enterprise is powered by data. We take information in, analyze it, manipulate it, and create more as output. Every application creates data, whether it is log messages, metrics, user activity, outgoing messages, or something else. Every byte of data has a story to tell, something of importance that will inform the next thing to be done. In order to know what that is, we need to get the data from where it is created to where it can be analyzed. We see this every day on websites like Amazon, where our clicks on items of interest to us are turned into recommendations that are shown to us a little later. The faster we can do this, the more agile and responsive our organizations can be.

>Publish/Subscribe Messaging

Before discussing the specifics of Apache Kafka, it is important for us to understand the concept of publish/subscribe messaging and why it is important. Publish/subscribe messaging is a pattern that is characterized by the sender (publisher) of a piece of data (message) not specifically directing it to a receiver. Pub/sub systems often have a broker.


![Pub/Sub](/img/2021-03-27/1.png)

This is a simple solution to a simple problem that works when you are getting started with monitoring. 


After a while, more application are inserted, more applications that are using those servers to get individual metrics and use them for various purposes. This example can look like the figure bellow:

![Pub/Sub](/img/2021-03-27/2.png)

The technical debt built up here is obvious, so you decide to pay some of it back. You set up a single application that receives metrics from all the applications out there, and provide a server to query those metrics for any system that needs them. This reduces the complexity of the architecture to something similar to the figure bellow. So, we can see a publish-subscribe messaging system!

![Pub/Sub](/img/2021-03-27/3.png)

>Kafka

Apache Kafka is a publish/subscribe messaging system. It is often described as a “distributed commit log” or more recently as a “distributing streaming platform.”

A filesystem or database commit log is designed to provide a durable record of all transactions so that they can be replayed to consistently build the state of a system. Similarly, data within Kafka is stored durably, in order, and can be read deterministically. In addition, the data can be distributed within the system to provide additional protections against failures, as well as significant opportunities for scaling performance.

-------------------
>Apache Kafka é uma plataforma de streaming de dados

* Permite publicar e subscrever aos streams de registros, como uma fila
* Armazena os streams de forma durável e tolerante a falhas
* Processa os streams na medida em que ocorrem
  
>Apache kafka 

* It's an event streaming platform
* Allowing to publish (write) and subscribe to (read) streams of events, including continuous import/export data from other systems.
* To store streams of events durably and reliably, it's fault tolerant.
* To process streams of events as they occur. 
-------------------

>Usado basicamente para

* Construção de sistemas onde a comunicação entre eles ocorre em tempo real
* Construir sistemas que transformam ou reagem ao fluxo de dados
  
>CONCEITOS CHAVE

* Para cada necessidade de comunicação criamos um tópico diferente
* As mensagens permanecem armazenadas mesmo após terem sido consumidas, podendo ser lidas novamente por outros interessados
* O Kafka armazena bytes. Tanto faz se iremos armazenar um JSON, um array de bytes ou qualquer outra coisa. Não há qualquer tratamento no payload, para otimizar a performance

-----------------------
>Tópicos e Partições

Messages in Kafka are categorized into topics. The closest analogies for a topic are a database table or a folder in a filesystem.

Partition is a single log, partition are also the way that Kafka provides redundancy and scalability. Each partition can be hosted on a different server, which means that a single topic can be scaled horizontally across multiple servers to provide performance far beyond the ability of a single server.

* Tópico: É uma fila de dados
  * Similar a uma tabela em um banco de dados
  * Você pode criar quantos tópicos desejar
  * Um tópico é definido pelo seu nome

* Os tópicos são subdivididos em partições
  * Cada nova mensagem é inserida de forma ordenada, dentro da partição
  * Cada partição tem um identificador incremental, chamado offset (marcador)

 >Topics and Partitions

Messages in Kafka are categorized into topics. The closest analogies for a topic are a database table or a folder in a filesystem.

Partition is a single log, partition are also the way that Kafka provides redundancy and scalability. Each partition can be hosted on a different server, which means that a single topic can be scaled horizontally across multiple servers to provide performance far beyond the ability of a single server.

* Topic:
  * It's similar to a folder in a filesystem
  * A topic can have many producers as you wish
  * A topic it's defined for a name

* Topics are partitioned
  * It's meaning a topic is spread over a number of "buckets" located on different Kafka brokers.
  * Each event is publish to a topic, it's actually appended to one of the topic's partitions.

------------------------------------------- 
 >Offsets

  * O offset é um identificador único de cada mensagem dentro de cada partição de um tópico
  * Cada consumidor controla seus próprios offsets à medida que consome os dados
  * Normalmente o consumo ocorre de forma linear, mas o consumidor pode retroceder ou avançar a posição atual, para reprocessar dados ou passar a consumir os dados a partir de determinado ponto.

KAFKA

* Concepts:
  * For each communication necessity we create a different topic.
  * Messages remain stored even after they have been consumed, and can be read again by other ones.
  * Kafka stores in bytes. It doesn't matter if it will store as JSON, array or anything eles.

* As mensagens permanecem armazenadas mesmo após terem sido consumidas, podendo ser lidas novamente por outros interessados
* O Kafka armazena bytes. Tanto faz se iremos armazenar um JSON, um array de bytes ou qualquer outra coisa. Não há qualquer tratamento no payload, para otimizar a performance

OFFSETS

* The offset is another bit of metadata - an integer value that continually increases - That Kafka adds to each message as it is produced. 
* Each message in a given partition has a unique offset. 
* By storing the offset of the last consumed message for each partition, either in Zookeeper or in Kafka itself, a consumer can stop and restart without losing its place.
-------------------------------------

>Produtores e consumidores

* Os produtores não precisam se preocupar com relação à partição onde os dados serão enviados, o Kafka gerencia isto automaticamente.
* A confirmação de escrita dos dados é automática, mas pode ser configurada manualmente caso necessário
* Em caso de falhas de conexão com o broker(servidor), o producer saberá se recuperar automaticamente

>Producers and Consumers

* Producers create new messages. In general, a message will be produced to a specific topic.
* By default, the producer does not care what partition a specific message is written to and will balance messages over all partitions of a topic evenly.
* The producer could also use a custom partitioner that follows other business rules for mapping messages to partitions.
* Consumers read messages. The consumer subscribes to one or more topics and reads the messages in the order in which they were produced.
* The consumer keeps track of which messages it has already consumed by keeping track of the offset of messages.

>Consumidores e grupos de consumidores

* Assim como os producers, os consumers sabem se recuperar automaticamente em caso de problemas na conexão
* Os consumers podem ler os dados dentro de um mesmo grupo, compartilhando o mesmo offset
* As partições são distribuídas conforme a quantidade de consumers existentes
* Se houver mais consumers do que partições para um determinado tópico, os consumers excedentes não receberão dados
* Sempre que um novo consumer passa a consumir de um tópico, ocorre um rebalanceamento das partições atribuídas para cada consumer



#### ***REFERÊNCIAS***

[1] Shapira, Gwen, et al. Kafka: The Definitive Guide, 2nd Edition. Estados Unidos, O'Reilly Media, Incorporated, 2021.

[2] KAFKA. Introduction to Kafka. [Apache Kafka](https://kafka.apache.org/intro). Last update 2021-03-29.

[3] CONFLUENT. Kafka Tutoriais. [Confluent Kafka](https://kafka-tutorials.confluent.io/). Last update 2021-03-29.
