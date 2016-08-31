#!/bin/bash

function osx {
	echo Running for osx
	mkdir -p /opt/local/etc/tinc/matiz/hosts
	cp hosts/* /opt/local/etc/tinc/matiz/hosts
}

function linux {
	echo Running for linux
	mkdir -p /etc/tinc/matiz/hosts
	cp hosts/* /etc/tinc/matiz/hosts
}

unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
   platform='osx'
fi

if [ "$platform" == 'osx' ]; then
  osx
else
  linux
fi