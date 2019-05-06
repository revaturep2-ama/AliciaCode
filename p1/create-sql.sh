##mySQL server
rg=$1
dbName=$2
serverName=$3
sub=$4
PASS=Password12345
USER=sqladmin

##create server

az mysql server create -g $rg -n $serverName --admin-password $PASS --admin-user $USER

##then create db

##az mysql db create -g $rg -n $dbName -s $serverName --subscription $sub



