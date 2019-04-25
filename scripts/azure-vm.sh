##arguments for name, admin,  resource group and image

vm_name=$1
newadmin=$2
vm_rg=$3
os=$4
size=$5

##check if vm already exists

if [ vm_name exists ]; then
echo "this vm already exists"
exit 1
fi

##check if rg exists

if ! [ vm_rg exists ]; then
echo "this resource group doesnt exist"
exit 1
fi

##funcitons to create and delete

##create function
create(){
if [ vm_rg exists ] && ! [ vm_name exists ]; then
echo "creating vm"
az vm create -n $vm_name -g $vm_rg --image $os --admin-username $newadmin --size $size --generate-ssh-keys
fi

}
##delete funciton

delete(){

##check if vm exists
if ! [ $(az vm list) | grep -E \$vm_name\ ]; then
echo "this vm does not exist"
exit 1
fi



}

##casing
