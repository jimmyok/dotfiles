#!/bin/bash

if [ -z $1 ] ;
then echo "first argument must be set to the workspace number"
  exit;
fi;


if [ -z $2 ] ;
then echo "second argument must be set to the workspace name"
  exit;
fi;

i3-msg "rename workspace $1 to $1: $2"
