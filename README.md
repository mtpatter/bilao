
[bilao](https://github.com/mtpatter/bilao)
============

Serving up winnowed data.

Usage
-------------------

```
docker build . -t "bilao"
```

Some notebooks assume use with the [LSST DM alert_stream testbed](https://github.com/lsst-dm/alert_stream) on a running Docker network for that testbed, named "alertstream_default", as in the configuration below.

Follow the instructions to access the Notebook server after running:

```
docker run -it \
       --rm \
       -v $PWD:/home/jovyan/work:rw \
       -p 8888:8888 -p 4040:4040 \
       --network=alertstream_default \
       -P \
	bilao
```

Examples
-------------------

### Spark Streaming

* [Streaming from Kafka](https://mtpatter.github.io/bilao/notebooks/html/01-spark-streaming-kafka.html)  ([ipynb](notebooks/01-spark-streaming-kafka.ipynb))

* [Streaming from Kafka using Avro](https://mtpatter.github.io/bilao/notebooks/html/01-spark-streaming-kafka-avro.html)  ([ipynb](notebooks/01-spark-streaming-kafka-avro.ipynb))

### Spark Structured Streaming

* [Structured Streaming from Kafka](https://mtpatter.github.io/bilao/notebooks/html/01-spark-struct-stream-kafka.html)  ([ipynb](notebooks/01-spark-struct-stream-kafka.ipynb))
