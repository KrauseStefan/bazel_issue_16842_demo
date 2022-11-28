#! /bin/bash

file="./ignored_directory/ignored_file.txt"
if [[ -f "${file}" ]]; then
  cat "${file}"
fi

echo "$@"