#!/bin/bash


# download the boxes & features
# https://drive.google.com/file/d/1KyLyqTqBsMX7QtLTma0xFrmhAzdQDUed/view

fileid="1KyLyqTqBsMX7QtLTma0xFrmhAzdQDUed"
filename="trainval2014_resnet101_faster_rcnn_genome.zip"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}


# https://drive.google.com/file/d/10nM3kRz2c827aqwVvLnv430YYFp0po6O/view
fileid="10nM3kRz2c827aqwVvLnv430YYFp0po6O"
filename="test2015_resnet101_faster_rcnn_genome.zip"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}


# https://drive.google.com/file/d/1CPnYcOgIOP5CZkp_KChuCg54_Ljr6-fp/view
fileid="1CPnYcOgIOP5CZkp_KChuCg54_Ljr6-fp"
filename="answers_vqa.txt"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}
