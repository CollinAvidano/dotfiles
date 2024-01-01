#!/bin/bash
set -x
# script copied from a guy to emulate xbacklight functionality for non intel gpus
baseDir='/sys/class/backlight/amdgpu_bl0'
 
brightnessInterval=0.075
brightnessIntervalLowBrightness=0.01
 
# Test if brightness file is writeable
if [ ! -w $baseDir/brightness ]; then
	echo "Error: The following file is not writeable: $baseDir/brightness"
fi
 
# Get current and max brightness
brightnessCurrent=$(cat $baseDir/brightness)
brightnessMaximum=$(cat $baseDir/max_brightness)
 
# Define the lower part of the brightness range (low brightness)
lowPercent=$(echo $brightnessMaximum'*11/100' | bc)
 
# Calculate the next brightness interval
if [ $brightnessCurrent -le $lowPercent ]; then
	nextValue=$(echo $brightnessIntervalLowBrightness'*'$brightnessMaximum | bc)
else
	nextValue=$(echo $brightnessInterval'*'$brightnessMaximum | bc)
fi
 
# Remove decimal from calculation
nextValue=$(echo ${nextValue%.*})
 
# Calculate the next birhgtness value based on an increase or a decrease in brightness
if [[ $1 == 'inc' ]]; then
	# Add the calculated brightness to current brightness
	nextValue=$(echo $brightnessCurrent+$nextValue | bc)
	# Ensure that the calculated brightness is not greated than max brightness
	if (( nextValue > brightnessMaximum )); then
		nextValue=$brightnessMaximum
	fi
elif [[ $1 == 'dec' ]]; then
	# Subtract the calculated brightness from current brightness
	nextValue=$(echo $brightnessCurrent-$nextValue | bc)
	# Ensure that the calculated brightness is not less than 0
	if (( nextValue < 0 )); then
		nextValue=0
	fi
else
	echo 'First parameter must be either "inc" or "dec"'
	exit 1
fi
 
# Apply new brightness value
echo $nextValue > $baseDir/brightness
