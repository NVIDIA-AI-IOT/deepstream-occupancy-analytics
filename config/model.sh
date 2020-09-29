#!/bin/bash

mkdir peoplenet && cd peoplenet
echo "Downloading pruned tlt peoplenet model.... "
wget --content-disposition https://api.ngc.nvidia.com/v2/models/nvidia/tlt_peoplenet/versions/pruned_v2.0/zip -O peoplenet.zip 
unzip peoplenet.zip
rm -r peoplenet.zip

