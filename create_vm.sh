#!/bin/bash

image="ubuntu-server-16.04"
flavor="m1.medium"
template="vm.yml"
ssh_key="toto"
availability_zone="nova:os-compute-01"
name="test"
dmz_net="dmz"
dmz_port_name="test"
security_groups="default"
minion_id="test.totoro.com"
stack_name="test"

openstack stack create -t $template --parameter "image=$image;flavor=$flavor;ssh_key=$ssh_key;availability_zone=$availability_zone;name=$name;dmz_net=$dmz_net;dmz_port_name=$dmz_port_name;security_groups=$security_groups;minion_id=$minion_id" --dry-run $stack_name
