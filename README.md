# Redis as Stateful Set With Sentinel

Redis Version: **3.2**

## Building the Docker image

    docker build -t <tagname> .

## Running the cluster

    kubernetes create -f primary.yml -f secondard.yml -f sentinal.yml
