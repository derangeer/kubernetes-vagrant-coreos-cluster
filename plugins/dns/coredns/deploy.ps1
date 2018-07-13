#!/bin/bash

# Deploys CoreDNS to a cluster currently running Kube-DNS.

$SERVICE_CIDR=$args[0]
$CLUSTER_DOMAIN=$args[1]
$YAML_TEMPLATE=$args[2]
$YAML=$args[3]

$CLUSTER_DNS_IP="10.100.0.10"

(Get-Content $YAML_TEMPLATE).replace('CLUSTER_DNS_IP', $CLUSTER_DNS_IP).replace('CLUSTER_DOMAIN', $CLUSTER_DOMAIN).replace('SERVICE_CIDR', $SERVICE_CIDR)| Set-Content $YAML