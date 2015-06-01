#!/bin/bash


usingSHA(){
#hashes date with SHA
echo
echo "32 character password generated using SHA256 with date"
echo "***************************************************"
date +%s | sha256sum | base64 | head -c 32 ; echo
echo "***************************************************"
}

usingOPENSSL(){
  echo
  echo "32 character password generated using openssl"
  echo "**************************************************"
  openssl rand -base64 32
  echo "**************************************************"
}

leftHAND(){
  echo
  echo "8 character password generated using /dev/urandom"
  echo "Meant to type with left hand"
  echo "**************************************************"
  </dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c8; echo ""
  echo "**************************************************"
}
