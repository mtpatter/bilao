FROM jupyter/all-spark-notebook
ENV REFRESHED_AT 2017-04-20

# Get schemas. # TODO update to checkout master when schema is updated
WORKDIR /home/jovyan
RUN git clone https://github.com/lsst-dm/sample-avro-alert.git && cd sample-avro-alert && git checkout tickets/DM-8160

WORKDIR /home/jovyan/work
ADD requirements.txt .
RUN pip install -r requirements.txt
