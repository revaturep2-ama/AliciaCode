##sign up
userdisplayname=$1
pass=$2
DOMAIN='$@mywebapp.southcentralus.cloudapp.azure.com'
userprincipalname= $userdisplayname$DOMAIN

user=$(az ad user list --query [].userPrincipalName | grep $userprincipalname)
     
     #conditional to see if user exist

     if [ -z $user ]; then
     echo "user doesn't exist"
     exit 1
    fi

az group create -n default-rg -l southcentralus

 az ad user create --user-display-name $userdisplayname --password $pass --user-principal-name $userprincipalname

az role assignment create --role administrator --assignee $userprincipalname