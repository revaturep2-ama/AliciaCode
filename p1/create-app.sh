rg=$1
appName=$2
sku=S1
sub=$3

az appservice plan create -g $rg -n $appName --sku $sku --is-linux --subscription $sub