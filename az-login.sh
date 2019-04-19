#!/bin/bash

username=$1
passcode=$2
userdisplayname=$3
userprincipalname=[$userdisplayname@$DOMAIN]
DOMAIN=$'alicialeblanc0gmail.onmicrosoft.com
random=$(date +%-M)
usersubscription=$4

az login -u $username -p $passcode

az ad user create --display-name $userdisplayname --password $random --user-principal-name $userprincipalname --force-change-password-next-login --subscription $usersubscription

echo 'az-login complete'
exit 0
