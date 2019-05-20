#!/bin/bash
##run network security groups create + delete

sgName=$1
rg=$2

if ! [ $(az group exists -n $rg) ]; then 

echo "this resource group doesnt exist!"
exit 1
fi

if [ $(grep /($sgName)/ ) | $(az network nsg list) ]; then
echo "this security group already exists"
exit 1
fi

az network nsg create -n $sgName -g $rg 



