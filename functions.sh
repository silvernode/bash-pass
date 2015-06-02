#!/bin/bash


shaStatic(){
#hashes date with SHA
  local charSize=20
  echo
  echo "${charSize} character password generated using SHA256 with date"
  echo "***************************************************"
  date +%s | sha256sum | base64 | head -c ${charSize} ; echo
  echo "***************************************************"
}

shaWithNum(){
  #hashes date with SHA
  if [ $1 -ge 255 ];then
    echo
    echo "Error : $0 : Please choose a number lower than 255"
    echo

  else
    echo
    echo "$1 character password generated using SHA256 with date"
    echo "***************************************************"
    date +%s | sha256sum | base64 | head -c $1 ; echo
    echo "***************************************************"
  fi
}


leftHand(){
  echo
  echo "8 character password easy to type with left hand"
  echo "**************************************************"
  </dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c8; echo ""
  echo "**************************************************"
}

leftHandNum(){
  if [ $1 -ge 255 ];then
    echo
    echo "Error : $0 : Please choose a number lower than 255"
    echo

  else
    echo
    echo "$1 character password easy to type with left hand"
    echo "**************************************************"
    </dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c$1; echo ""
    echo "**************************************************"
  fi
}
