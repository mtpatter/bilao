bilao
============

Serving up winnowed data.

Usage
-------------------

```
docker build . -t "bilao"
```

Some notebooks assume use with the [LSST DM alert_stream testbed](github.com/lsst-dm/alert_stream) on a running Docker network for that testbed, named "alertstream_default", as in the configuration below.

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
