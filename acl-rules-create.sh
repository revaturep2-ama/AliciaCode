#!/bin/bash
##create rules

rule=$1
rg=$2
sg=$3
access=$4
pri=$5
dap=$6
dir=$7
sap=$8
dpr=$9

##inbound and outbound

##if [ "$(grep -E /($rule)/)) | $(az network nsg rule list --nsg-name $sg -g $rg)" ]; then
##echo "this rule already exists"
##exit 1
##fi

##if ! [  "$((grep -E /($sg)/)) | $(az network nsg list)" ]; then
##echo "this security group doesn't exist"
##exit 1
##fi 

##if ! [ "$(az group exists -n $rg)" ]; then 

##echo "this resource group doesnt exist!"
##exit 1
##fi

az network nsg rule create -n $rule -g $rg --nsg-name $sg --access $access --priority $pri --destination-address-prefixes $dap \
--direction $dir  --source-address-prefixes $sap --destination-port-ranges $dpr 
