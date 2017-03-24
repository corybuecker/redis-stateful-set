# Redis as Stateful Set With Sentinel

This is a proof of concept for running Redis with Sentinel on Kubernetes. In order to scale the size of the cluster, increase or decrease the replica count on the secondary stateful set.

I have included a default, standard storage class for use in AWS. The default volumes provisioned for the primary and secondary Redis instances are set to 5GB, but feel free to change that to something larger.

Kubernetes Version: **1.5.4**

Redis Version: **3.2**

## Building the Docker image

    docker build -t <tagname> .

## Running the cluster

    kubectl create -f primary.yml -f secondary.yml -f sentinel.yml
