#!/bin/bash

# download the vqa_coco_pre_trained
# https://drive.google.com/file/d/1tgYovjB6MZZlqdSAOPzB8bZqnFezWNBO/view

fileid="1tgYovjB6MZZlqdSAOPzB8bZqnFezWNBO"
filename="vqa_coco_pre_trained.th"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}


# https://drive.google.com/file/d/1kuPr187zWxSJbtCbVW87XzInXltM-i9Y/view
fileid="1kuPr187zWxSJbtCbVW87XzInXltM-i9Y"
filename="vqa_pre_trained.th"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}


# https://drive.google.com/file/d/19FpfLYo3rwv0eybUvfkDMCoivyL4XLqB/view
fileid="1xamTrLkWrYQJ0ddy2roe2UG1u2jusQZN"
filename="vqa_fine_tuned.th"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

