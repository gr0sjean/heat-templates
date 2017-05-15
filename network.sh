#!/bin/bash

office_dmz_net_name="dmz"
office_dmz_cidr="192.168.4.0/24"
office_dmz_gw_ip="192.168.4.1"
office_dmz_subnet_name="dmz"
office_dmz_phy="dmz"
office_dmz_start_ip="192.168.4.100"
office_dmz_end_ip="192.168.4.254"
office_dmz_dns="8.8.4.4,8.8.8.8"

office_guest_net_name="guest"
office_guest_cidr="192.168.0.0/22"
office_guest_subnet_name="guest"
office_guest_phy="guest"

stack_template="network.yml"
stack_name="network"

openstack stack create -t $stack_template --parameter "office_dmz_net_name=$office_dmz_net_name;office_dmz_cidr=$office_dmz_cidr;office_dmz_gw_ip=$office_dmz_gw_ip;office_dmz_subnet_name=$office_dmz_subnet_name;office_dmz_phy=$office_dmz_phy;office_dmz_start_ip=$office_dmz_start_ip;office_dmz_end_ip=$office_dmz_end_ip;office_dmz_dns=$office_dmz_dns;office_guest_net_name=$office_guest_net_name;office_guest_cidr=$office_guest_cidr;office_guest_subnet_name=$office_guest_subnet_name;office_guest_phy=$office_guest_phy" --dry-run $stack_name
