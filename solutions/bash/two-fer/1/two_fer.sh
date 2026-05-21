#!/usr/bin/env bash
set -o errexit
set -o nounset
main() {
  input=$@
  if [ $# -gt "0" ]; then echo "One for "$1", one for me.";else echo "One for you, one for me.";fi
}
main "$@"
