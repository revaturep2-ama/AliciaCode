#!/bin/bash

appPlanName=$1
rg=$2
sku=$3

##app and service plan template script

az appservice plan create --name $appPlanName --resource-group $rg --sku $sku
##sql script 

az sql db create -n $sqlName -g $sqlRG 

##sh 

##cosmos tmeplate json

##sh 

##storage script