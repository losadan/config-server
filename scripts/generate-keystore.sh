#!/bin/bash


echo Provide keystore password
read -s KEY_STORE_PASS

echo Provide private-key password
read -s PRIVATE_KEY_PASS

echo Provide keystore file name
read KEYSTORE_FILE_NAME

echo Provide alias for the key pair in the keystore
read KEY_ALIAS

keytool -genkeypair -alias ${KEY_ALIAS} \
       -keyalg RSA -keysize 4096 -sigalg SHA512withRSA \
       -dname 'CN=Noemi and Mat Demo,OU=Mendeley,O=Elsevier' \
       -keypass ${PRIVATE_KEY_PASS} -keystore ${KEYSTORE_FILE_NAME} \
       -storepass ${KEY_STORE_PASS}
