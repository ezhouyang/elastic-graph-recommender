#!/bin/bash
if [ ${ELASTICSEARCH_GRAPH_RECOMMENDER_URL+x} ]
then ELASTICSEARCH_HOST=$ELASTICSEARCH_GRAPH_RECOMMENDER_URL
else ELASTICSEARCH_HOST=localhost:9200
fi

#sed -i -e "s/DYN_ELASTICSEARCH_HOST/$ELASTICSEARCH_HOST/g" /app/scripts/app*.js
sed -i -e "s/DYN_ELASTICSEARCH_HOST/$ELASTICSEARCH_HOST/g" /app/scripts/app*.js

#/usr/sbin/nginx -g 'daemon off;'
python -m SimpleHTTPServer
