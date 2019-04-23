#!/bin/bash

#echo "* hard    nofile  65532" >> /etc/security/limits.d/cassandra.conf
#echo "* soft    nofile  65532" >> /etc/security/limits.d/cassandra.conf
echo "net.ipv4.tcp_tw_reuse = 1" >> /etc/sysctl.d/cassandra.conf
echo "vm.overcommit_memory = 1" >> /etc/sysctl.d/cassandra.conf
echo "vm.zone_reclaim_mode = 0" >> /etc/sysctl.d/cassandra.conf

sysctl -p

