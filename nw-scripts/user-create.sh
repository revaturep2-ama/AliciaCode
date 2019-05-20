command=$1
userdisplayname=$2
##DOMAIN=$''
userprincipalname=$userdisplayname$DOMAIN
random=$3
usersubscription=$4
currentuser=$(az account show --query user.name)



az ad user create --display-name $userdisplayname --password $random --user-principal-name $userprincipalname --force-change-password-next-login --subscription $usersubscription