#!/bin/bash

##create network
nw=$1
rg=$2
ap=$3
sn=$4
sp=$5

<<<<<<< HEAD
if ! [ "$(az group exists -n $rg)" ]; then
echo "this resource group doesnt exist"
exit 1
fi

if [ "$(grep /($nw)/)" | "$(az network vnet list -g $rg)" ]; then
echo "this network already exists"
exit 1
fi
=======
##if ! [ "$(az group exists -n $rg)" ]; then
##echo "this resource group doesnt exist"
##exit 1
##fi

##if [ "$((grep /($nw)/)) | (az network vnet list -g $rg)" ]; then
##echo "this network already exists"
##exit 1
##fi
>>>>>>> e888a1ce30c9edf792a8bb0cdebd9c62c8b74edb

az network vnet create -n $nw -g $rg --address-prefix $ap --subnet-name $sn --subnet-prefix $sp 
