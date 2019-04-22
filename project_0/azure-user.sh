#!/bin/bash

username=$1
passcode=$2
userdisplayname=$3
DOMAIN=$'@'alicialeblanc0gmail.onmicrosoft.com
userprincipalname=$userdisplayname$DOMAIN
random=$(date +"%-M:%-S_%-p")
usersubscription=$4

##functions

create_user()
{
  az login -u $username -p $passcode
  az ad user create --user-display-name $userdisplayname --password $random --user-principal-name $userprincipalname --force-change-password-next-login --subscription $usersubscription 
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
