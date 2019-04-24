#!/bin/bash
command = $2
userdisplayname=$3
DOMAIN=$'@alicialeblanc0gmail.onmicrosoft.com'
userprincipalname=$userdisplayname$DOMAIN
random=$(date +"%-M:%-S_%-p")
usersubscription=$4
currentuser=$(az account show --query user.name)

##verify az-cli
if ! [ $(which az) ]; then
exit 1; echo "no azure"
fi

##commands

case $command in
create ) create_user()
;;
assign ) assign_role()
;;
remove ) delete_user()
esac

##functions

create_user()
{
	
	if [ $(az role assignment list --include-classic-administrators --query "[?id=='NA(classic admins)'].principalName | grep -E $currentUser ] && [ $(az ad user list --query [].userPrincipalName) | grep -E != $userprincipalname ]; then
	az ad user create --display-name $userdisplayname --password $random --user-principal-name $userprincipalname --force-change-password-next-login --subscription $usersubscription
	
	else echo "You need to be an administrator to create users"
	else echo "this user already exists"
	fi
}

assign_role($username, $role)
{
	role=$5
	##verify user exists
	if ! [ $(az ad user list --query [].userPrincipalName) | grep -E $userprincipalname) ]; then
	echo "this user doesnt exist"
	exit 1
	fi

	##if user has the role, remove it
	if [ az 

	##if user does not have the role, assign  it (if/else)

	
}

delete_user( )
{
	##delete non-admin user
	echo "hasta la vista, loser"
}

create_user
assign_role
delete_user



echo 'azure-user complete'
exit 0


