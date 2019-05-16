#!/bin/bash
##create rules

rule=$1
rg=$2
sg=$3
pri=$4
dap=$5
dir=$6
sap=$7
dpr=$8

##inbound and outbound

if [ $(grep /($rule)/ ) | $(az network nsg rule list --nsg-name $sg -g $rg) ]; then
echo "this rule already exists"
exit 1
fi

if ! [  $(grep /($sg)/ ) | $(az network nsg list) ]; then
echo "this security group doesn't exist"
exit 1
fi 

if ! [ $(az group exists -n $rg) ]; then 

echo "this resource group doesnt exist!"
exit 1
fi

az network nsg rule create -n $rule -g $rg --nsg-name $sg --priority $pri --access $access --destination-address-prefixes $dap \
--direction $dir  --source-address-prefixes $sap --destination-port-ranges $dpr 
