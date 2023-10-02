#!/bin/bash
myupdate () 
{
sudo apt update
echo "Updated properly"
sudo apt upgrade
echo "Upgraded properly"
}

myupdate
