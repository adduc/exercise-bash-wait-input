#!/bin/bash

wait_keypress() {
  read -n 1 -s -p "Press any key to continue..."
  echo
}

wait_yn() {
    # @see https://stackoverflow.com/a/49805832
    [[ "$(read -e -p 'Continue? [y/N]> '; echo $REPLY)" == [Yy]* ]]
}

wait_input() {
    read -p "? " REPLY
    echo "$REPLY"
}

main() {
  wait_keypress
  wait_yn
  echo $(wait_input)
}

main