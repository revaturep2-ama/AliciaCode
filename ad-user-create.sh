#!/bin/bash

##creating a new user

userdisplayname=$1
DOMAIN=$'@alicialeblanc0gmail.onmicrosoft.com'
userprincipalname=$userdisplayname$DOMAIN
pass=$2

  az ad user create --user-display-name $userdisplayname --password $pass --user-principal-name $userprincipalname --force-change-password-next-login

