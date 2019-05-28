#!/bin/bash

role=$1
user=$2


az role assignment create --role $role --assignee $user

shell.exec('az role assignment create --role' + role + '--assignee user' );