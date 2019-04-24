#!/bin/bash
command = $1
userdisplayname=$2
DOMAIN=$'@alicialeblanc0gmail.onmicrosoft.com'
userprincipalname=$userdisplayname$DOMAIN
random=$(date +"%-M:%-S_%-p")
usersubscription=$3
currentuser=$(az account show --query user.name)

##verify az-cli
if ! [ $(which az) ]; then
exit 1; echo "no azure"
fi

##commands

case $command
create ) create_user();;
assign ) assign_role();;
remove ) delete_user();;
esac

##functions

create_user()
{
	
	if [ $(az role assignment list --include-classic-administrators --query "[?id=='NA(classic admins)'].principalName | grep -E $currentUser ] && [ az ad user list --query [].userPrincipalName | grep -E != $userprincipalname ]; then
	az ad user create --display-name $userdisplayname --password $random --user-principal-name $userprincipalname --force-change-password-next-login --subscription $usersubscription
	
	else echo "You need to be an administrator to create users"
	else echo "this user already exists"
	fi
}

assign_role($username, $role)
{
	##verify user exists
	##if user has the role, remove it
	##if user does not have the role, assign  it (if/else)

	echo "yes/no"
	case read answer
	yes ) remove role commands;
	esac

	echo "fresh roles here"
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


