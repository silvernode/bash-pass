#!/bin/bash

source functions.sh


  case "$1" in
  -s | --sha ) usingSHA
  ;;

  -o | --openssl ) usingOPENSSL
  ;;

  -l | --lefthand ) leftHAND
  ;;

  *) echo
     echo "BASH PASS HELP"
     echo
     echo "-s | --sha  SHA the date and print 32 character pass"
     echo
     echo "-o | --openssl  32 character password using openssl"
     echo
     echo "-l | --lefthand  8 character password for left hand"
  ;;
  esac
