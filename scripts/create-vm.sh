##arguments for name, admin, size,  resource group and image
vm_name=$1
newadmin=$2
vm_rg=$3
os=$4
size=$5

##check if vm already exists

##if [ $(az vm list | grep \$vm_name\) ];
##echo "this vm already exists"
##exit 1


##check if rg exists

##if ! [ $(az group exists -n $vm_rg) ]; then
##echo "this resource group doesnt exist"
##exit 1
##fi

##create vm
##if [ $(az group exists -n $vm_rg)  ] && ! [ $(az vm list | grep \$vm_name\) ]; then
echo "creating vm"
az vm create -n $vm_name -g $vm_rg --image $os --admin-username $newadmin --size $size --generate-ssh-keys --no-wait
##fi

