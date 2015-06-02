#!/bin/bash

source functions.sh


case "$1" in
  -cs | --char-size ) shaWithNum $2
  ;;

  -l | --left-hand ) leftHand
  ;;

  -lcs | --left-char-size ) leftHandNum $2
  ;;

  "") shaStatic
  ;;

  * | -h | --help ) echo
  echo "BASH PASS HELP"
  echo
  echo "-cs <integer> | --char-size <integer> : specify password character size"
  echo
  echo
  echo "-l <integer> | <integer> --lefthand : left handed password"
  echo
  echo "-lcs <integer> | --left-char-size <integer> : left hand password with char size"
  echo
  ;;
esac
