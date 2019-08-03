#!/bin/sh
#变量的=前后不能加空格
servername="68.168.137.218:8060"
download_file="/download/file.img"
time_num=$(date  -d "2019-9-28 00:00:00" +%s)
secret_num="robin"

res=$(echo -n "${time_num}${download_file} ${secret_num}"|openssl md5 -binary | openssl base64 | tr +/ -_ | tr -d =)

echo "http://${servername}${download_file}?md5=${res}&expires=${time_num}"