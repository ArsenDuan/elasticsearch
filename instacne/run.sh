#!/bin/sh

DIR=$(pwd)

IMGS='test-es:v1.1'
VCONF="-v $DIR/conf:/conf"
VDATA="-v $DIR/data:/data"
VLOGS="-v $DIR/logs:/logs"

PORTS='-p 9200:9200 -p 9300:9300'

ENV="-e ES_HEAP_SIZE=2g"

docker run --privileged -d $ENV $VCONF $VDATA $VLOGS $PORTS $IMGS





