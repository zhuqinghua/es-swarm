#!/bin/bash
nohup ./docker-ingress-routing-daemon --ingress-gateway-ips 10.255.0.2 --services es_fluentd --udp-ports 514,5140 --install 2>&1 &
