#!/bin/bash

# download the mask_train
# https://drive.google.com/file/d/1lmPiz8dsM0jwJmooVcMRTLa4YGmf_qU_/view

fileid="1lmPiz8dsM0jwJmooVcMRTLa4YGmf_qU_"
filename="mask_train.th"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

# download the mask_val
# https://drive.google.com/file/d/1fVX4TaqcgowoWQTNJ8k3EYxUKRpMJSFL/view
fileid="1fVX4TaqcgowoWQTNJ8k3EYxUKRpMJSFL"
filename="mask_val.th"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

