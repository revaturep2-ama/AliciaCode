#!/bin/bash

server=$1
rg=$default-rg
db=$2
admin=$sqladmin
adminPass=$Password12345


az sql server create -n $server --admin-user $admin --admin-password $adminPass -g $rg -l southcentralus

az sql db create -n $db -g $rg -s $server

shell.exec('az sql server create -n $server' + '--admin-user $admin' + '--admin-password $adminPass' + '-g $rg' + '-l southcentralus');

shell.exec('az sql db create -n $db' +  '-g $rg' + '-s $server');