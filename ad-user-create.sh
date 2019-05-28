#!/bin/bash

##creating a new user

userdisplayname=$1
DOMAIN=$'@mywebapp.southcentralus.cloudapp.azure.com'
userprincipalname=$userdisplayname$DOMAIN
pass=$2

user=$(az ad user list --query [].userPrincipalName | grep $userprincipalname)
     
     #conditional to see if user exist

     if [ -n $user ]; then
     echo "user already exists"
     exit 1
    fi

  az ad user create --user-display-name $userdisplayname --password $pass --user-principal-name $userprincipalname --force-change-password-next-login

az role assignment create --role reader --assignee $userprincipalname