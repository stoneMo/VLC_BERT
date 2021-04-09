#!/bin/bash


# download the vl bert checkpoint 
# https://drive.google.com/file/d/1jjV1ARYMs37tOaBalhJmwq7LcWeMai96/view

fileid="1jjV1ARYMs37tOaBalhJmwq7LcWeMai96"
filename="vl-bert-base-e2e.model"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}


# https://drive.google.com/file/d/1YTHWWyP7Kq6zPySoEcTs3STaQdc5OJ7f/view
fileid="1YTHWWyP7Kq6zPySoEcTs3STaQdc5OJ7f"
filename="vl-bert-large-e2e.model"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}


# https://drive.google.com/file/d/1YBFsyoWwz83VPzbimKymSBxE37gYtfgh/view
fileid="1YBFsyoWwz83VPzbimKymSBxE37gYtfgh"
filename="vl-bert-base-prec.model"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

# https://drive.google.com/file/d/1REZLN7c3JCHVFoi_nEO-Nn6A4PTKIygG/view
fileid="1REZLN7c3JCHVFoi_nEO-Nn6A4PTKIygG"
filename="vl-bert-large-prec.model"
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${fileid}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${fileid}" -o ${filename}

