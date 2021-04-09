#!/bin/bash


# download the bert pretrain 
# https://drive.google.com/file/d/14VceZht89V5i54-_xWiw58Rosa5NDL2H/view

fileid="14VceZht89V5i54-_xWiw58Rosa5NDL2H"
filename="bert.zip"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}


# https://drive.google.com/file/d/1qJYtsGw1SfAyvknDZeRBnp2cF4VNjiDE/view
fileid="1qJYtsGw1SfAyvknDZeRBnp2cF4VNjiDE"
filename="resnet101-pt-vgbua-0000.model"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
