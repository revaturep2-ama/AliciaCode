##proejct 1 specific vm script file
##!/bin/bash

##vm
echo "creating VM"
az vm create \ 
-n $vm_name \
-g $vm_rg \
--image $os \
--admin-username $newadmin \
--size $size \
--generate-ssh-keys \
--custom-data ./scripts/cloud-init.txt \
--no-wait

echo "VM created"

##eventually do the storage/db connect thing??
