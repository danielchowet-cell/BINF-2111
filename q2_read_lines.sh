#!/usr/bin/env bash
# Usage: ./q2_read_lines.sh <file>
# Prints each line and the character count of that line

file="$1"
if [[ -z "$file" || ! -f "$file" ]]; then
  echo "Usage: $0 <file>"; exit 1
fi

while IFS= read -r line; do
  echo "$line  | length: ${#line}"
done < "$file"
