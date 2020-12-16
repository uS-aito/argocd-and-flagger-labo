#!/bin/bash

helm upgrade -i flagger flagger/flagger \
--namespace=istio-system \
--set crd.create=false \
--set meshProvider=istio \
--set metricsServer=http://prometheus:9090 \
--set slack.url=https://hooks.slack.com/services/my/webhook/addr \
--set slack.channel=general \
--set slack.user=flagger-app
