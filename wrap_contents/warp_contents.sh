#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <content_file> <specifier> <output_file>"
  exit 1
fi

# Assign arguments to variables
content_file=$1
specifier=$2
output_file=$3

# Construct header and footer filenames
header_file="${specifier}_header.html"
footer_file="${specifier}_footer.html"

# Check if the required files exist
if [ ! -f "$content_file" ]; then
  echo "Content file '$content_file' not found!"
  exit 1
fi

if [ ! -f "$header_file" ]; then
  echo "Header file '$header_file' not found!"
  exit 1
fi

if [ ! -f "$footer_file" ]; then
  echo "Footer file '$footer_file' not found!"
  exit 1
fi

# Read the contents of the files
header_content=$(cat "$header_file")
content=$(cat "$content_file")
footer_content=$(cat "$footer_file")

# Concatenate the contents
wrapped_content="${header_content}\n${content}\n${footer_content}"

# Write the concatenated content to the output file
echo -e "$wrapped_content" > "$output_file"

echo "Content wrapped successfully into '$output_file'"