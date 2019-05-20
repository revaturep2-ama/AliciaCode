#!/bin/bash

##automate node-based web server actions


##verify node bin

if ! [ node --version ]; then
	exit 1
fi


## case

case $command
start ) start();
stop ) stop();
esac

file=$1

##create start funciton
start()
{
	##start node server
	npm start $file
}

##create stop function
stop()
{
	##stop node server
	npm stop $file
}

exit 0
