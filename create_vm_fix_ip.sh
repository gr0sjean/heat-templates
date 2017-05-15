#!/bin/bash

template="vm-fixed-ip.yml"
ssh_key="toto"
availability_zone="emea:os-compute-06"
name="test-ip"
dmz_net="dmz"
dmz_subnet="dmz"
dmz_port_name="test-ip"
security_groups="default-enforced,test-servers"
minion_id="test-ip.totoro.com"
fix_ip="10.0.0.2"
stack_name="test-ip"

openstack stack create -t $template --parameter "ssh_key=$ssh_key;availability_zone=$availability_zone;name=$name;dmz_net=$dmz_net;dmz_subnet=$dmz_subnet;dmz_port_name=$dmz_port_name;security_groups=$security_groups;minion_id=$minion_id;fix_ip=$fix_ip" $stack_name
