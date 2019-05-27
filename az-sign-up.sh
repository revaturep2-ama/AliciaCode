##sign up
userdisplayname=$1
pass-$2
DOMAIN='$@mywebapp.southcentralus.cloudapp.azure.com:1337'
userprincipalname= $userdisplayname$DOMAIN

az group create -n default-rg -l southcentralus

 az ad user create --user-display-name $userdisplayname --password $pass --user-principal-name $userprincipalname

az role assignment create --role administrator --assignee $userprincipalname