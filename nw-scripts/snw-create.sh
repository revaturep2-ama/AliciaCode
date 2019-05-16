#!/bin/bash

#create subnets 


az network vnet subnet create -n $sn -g $rg --vnet-name $nw --address-prefixes $ap 