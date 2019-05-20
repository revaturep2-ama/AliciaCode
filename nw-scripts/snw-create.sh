#!/bin/bash

sn=$1
rg=$2
nw=$3
ap=$4

#create subnets 

<<<<<<< HEAD
sn=$1
rg=$2
nw=$3
ap=$4

if ! [ $(grep /($nw)/) | $(az network vnet list -g $rg) ]; then
echo "this network doesnt exist"
exit 1
fi
=======
##if ! [ "$((grep /($nw)/)) | $(az network vnet list -g $rg)" ]; then
##echo "this network doesnt exist"
##exit 1
##fi
>>>>>>> e888a1ce30c9edf792a8bb0cdebd9c62c8b74edb

##if [ "$(grep /($sn)/) | $(az network vnet subnet list -g $rg --vnet-name $nw)" ]; then
##echo "this subnet already exists in this network"
##exit 1
##fi

az network vnet subnet create -n $sn -g $rg --vnet-name $nw --address-prefixes $ap 