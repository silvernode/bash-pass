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
  echo "NAME"
  echo "    bashpass"
  echo
  echo "SYNOPSIS"
  echo "    bashpass [-h] [--help] [-cs <integer>] [-l] [-lcs <integer>]"
  echo
  echo "-cs <integer> | --char-size <integer>"
  echo "  specify password length"
  echo
  echo "-l <integer> | --lefthand"
  echo "  left handed password"
  echo
  echo "-lcs <integer> | --left-char-size <integer>"
  echo "  left hand password with length"
  echo
  ;;
esac
