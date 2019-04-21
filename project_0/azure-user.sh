#!/bin/bash

username=$1
passcode=$2
userdisplayname=$3
userprincipalname=[$userdisplayname]$DOMAIN
DOMAIN=$'@'alicialeblanc0gmail.onmicrosoft.com
random=$(date +%-M)
usersubscription=$4

##functions

create_user()
{
  echo "henlo baby"
}

assign_role()
{
  echo "fresh roles here"
}

delete_user()
{
  echo "hasta la vista, loser"
}

create_user
##assign_role
##delete_user

##az login -u $username -p $passcode

##az ad user create --display-name $userdisplayname --password $random --user-principal-name $userprincipalname --force-change-password-next-login --subscription $usersubscription

echo 'azure-user complete'
exit_0
