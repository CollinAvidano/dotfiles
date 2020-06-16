#!/bin/bash

declare -a StringArray=("examples.desktop" "Templates" "Public")
 
# Iterate the string array using for loop
for val in ${StringArray[@]}; do
   cd $HOME && rm -rf $val
done

cd $HOME && rename 'y/A-Z/a-z/' * 


#process all subdirectories and files in parent directory
#all="$(find $HOME -depth)"
#
#
#for name in ${all}; do
#        #set new name in lower case for files and directories
#        new_name="$(dirname "${name}")/$(basename "${name}" | tr '[A-Z]' '[a-z]')"
#
#        #check if new name already exists
#        if [ "${name}" != "${new_name}" ]; then
#                [ ! -e "${new_name}" ] && mv -T "${name}" "${new_name}"; echo "${name} was renamed to ${new_name}" || echo "${name} wasn't renamed!"
#        fi
#done
#
#echo
#echo
##list directories and file new names in lowercase
#echo "Directories and files with new names in lowercase letters"
#find $(echo $HOME | tr 'A-Z' 'a-z') -depth

exit 0
