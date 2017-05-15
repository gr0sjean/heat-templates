#!/bin/bash

image="WS2012R2"
flavor="BIG"
password="%Totoro0692"
template="win.yml"
ssh_key="toto"
availability_zone="emea:os-compute-05"
name="p01"
dmz_net="dmz"
dmz_port_name="p01"
security_groups="default-win"
minion_id="p1.totoro.com"
stack_name="p01"

openstack stack create -t $template --parameter "image=$image;flavor=$flavor;ssh_key=$ssh_key;password=$password;availability_zone=$availability_zone;name=$name;dmz_net=$dmz_net;dmz_port_name=$dmz_port_name;security_groups=$security_groups" --dry-run $stack_name
