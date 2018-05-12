#!/bin/bash

#This script will give you the battery percentage
battery(){
	pmset -g batt | grep -o '[0-9]*%'
}

