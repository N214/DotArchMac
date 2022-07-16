#!/usr/bin/env bash

files=${1?Error: Specifie a file plz !}
sed "s/\s*#.*//g; /^$/ d" $files
