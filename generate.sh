#!/bin/bash

set -e

if [ -z "$1" ]; then
    echo "Usage: ./generate.sh <name>"
    echo "Example: ./generate.sh \"John Doe\""
    exit 1
fi

# Capitalize first letter of each word, then replace spaces with dashes
name=""
for word in $1; do
    capitalized="$(echo "${word:0:1}" | tr '[:lower:]' '[:upper:]')${word:1}"
    if [ -z "$name" ]; then
        name="$capitalized"
    else
        name="$name-$capitalized"
    fi
done

script_dir="$(cd "$(dirname "$0")" && pwd)"
resumes_dir="$script_dir/resumes"
fonts_dir="$script_dir/fonts"

for typ_file in "$resumes_dir"/*.typ; do
    if [ -f "$typ_file" ]; then
        basename=$(basename "$typ_file" .typ)
        output_file="$resumes_dir/${name}-${basename}-Resume.pdf"

        echo "Generating $output_file..."
        typst compile "$typ_file" "$output_file" --font-path "$fonts_dir" --root "$script_dir"
    fi
done

echo "Done."
