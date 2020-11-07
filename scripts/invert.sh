#!/bin/bash
# TODO multiple arguments (loop)

file=$(readlink -f "$1")
dir=$(dirname "$file")
extension="${file##*.}"
base="${file%.*}"

original="$base"_original."$extension"

mv "$file" "$original"

convert "$original" -channel RGB -negate "$file"

