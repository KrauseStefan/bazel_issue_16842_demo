#! /bin/bash

bazel clean --expunge

bazel build --strategy=Genrule=local demo

ignored_directory="$(bazel info execution_root)/ignored_directory"

if [[ -o "${ignored_directory}" ]]; then
  echo "Ignored directoyr found in execroot!!!!"
  ls -l "${ignored_directory}"
fi

echo
echo "Content of output file:"
cat bazel-out/k8-fastbuild/bin/file.txt