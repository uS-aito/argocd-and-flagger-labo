#!/bin/bash

helm upgrade -i flagger flagger/flagger \
--namespace=istio-system \
--set crd.create=false \
--set meshProvider=istio \
--set metricsServer=http://prometheus:9090 \
--set slack.url=https://hooks.slack.com/services/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 \
--set slack.channel=general \
--set slack.user=flagger-app