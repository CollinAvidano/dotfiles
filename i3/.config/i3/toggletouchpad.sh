#!/bin/bash

device_name='Synaptics TM3289-021'
device_id=$(xinput list --id-only "$device_name")

state=$(xinput list-props "$device_id" | grep "Device Enabled" | grep -o "[01]$")

if [ $state == '1' ];then
  xinput --disable "$device_id"
else
  xinput --enable "$device_id"
fi
