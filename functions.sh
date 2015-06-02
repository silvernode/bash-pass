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
  echo
  echo "$1 character password generated using SHA256 with date"
  echo "***************************************************"
  date +%s | sha256sum | base64 | head -c $1 ; echo
  echo "***************************************************"
}

leftHand(){
  echo
  echo "8 character password easy to type with left hand"
  echo "**************************************************"
  </dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c8; echo ""
  echo "**************************************************"
}

leftHandNum(){
  echo
  echo "$1 character password easy to type with left hand"
  echo "**************************************************"
  </dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c$1; echo ""
  echo "**************************************************"
}
