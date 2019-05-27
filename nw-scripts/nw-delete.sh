#!/bin/bash

##delete network
rg=$default-rg
nw=$2

if ! [ $(az group exists -n $rg) ]; then
echo "this resource group doesnt exist"
exit 1
fi

if ! [ $(grep /($nw)/) | $(az network vnet list -g $rg) ]; then
echo "this network doesnt exist"
exit 1
fi

az network vnet delete -g $rg -n $nw