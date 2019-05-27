#!/bin/bash
##nsg delete

sgName=$1
rg=$default-rg

if ! [ $(az group exists -n $rg) ]; then 

echo "this resource group doesnt exist!"

fi

if ! [ $(grep \-w $sgName\ ) | $(az network nsg list) ]; then
echo "this security group doesnt exist"
fi

az network nsg delete -n $sgName -g $rg