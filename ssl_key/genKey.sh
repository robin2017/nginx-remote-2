#1、生成非对称私钥
openssl genrsa  -out robin.key 1024

#2、生成明文文件
openssl req -new -key robin.key -out robin.csr
#相关信息
#Country Name (2 letter code) []:cn
#State or Province Name (full name) []:jiangsu
#Locality Name (eg, city) []:nanjing
#Organization Name (eg, company) []:seu
#Organizational Unit Name (eg, section) []:cetc28s
#Common Name (eg, fully qualified host name) []:robin
#Email Address []:robin.seu@foxmail.com

#Please enter the following 'extra' attributes
#to be sent with your certificate request
#A challenge password []:123456

#3、生成自签名证书
openssl x509 -req -days 3650 -in robin.csr -signkey robin.key -out robin.crt
