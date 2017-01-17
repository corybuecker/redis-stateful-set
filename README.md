# Redis as Stateful Set With Sentinel

Redis Version: **3.2**

## Building the Docker image

    docker build -t <tagname> .

## Running the cluster

    kubectl create -f primary.yml -f secondary.yml -f sentinel.yml
