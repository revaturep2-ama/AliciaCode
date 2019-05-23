#!/bin/bash

sn=$1
rg=$2
nw=$3

if ! [ "$((grep /($sn)/) | $(az network vnet subnet list -g $rg --vnet-name $nw))" ]; then
echo "this subnet does not exist in this network"
exit 1
fi

##delete subnet

az vnet subnet delete -n $sn -g $rg --vnet-name $nw