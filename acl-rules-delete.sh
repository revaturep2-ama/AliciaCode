#!/bin/bash

##delete nsg rules
rule=$1
sg=$2
rg=$default-rg

if ! [ $(grep /($rule)/ ) | $(az network nsg rule list --nsg-name $sg -g $rg) ]; then
echo "this rule doesnt exist"
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

az network nsg rule delete -n $rule --nsg-name $sg -g $rg 