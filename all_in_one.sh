#!/usr/bin/env bash
# Single script that can run parts 1–5. Usage: ./all_in_one.sh <part> [args]
# Parts: 1=array lengths, 2=read file, 3=pseudocode, 4=about me, 5=add a b

part="$1"; shift || true

case "$part" in
  1)
    amino_acids=(Methionine Leucine Cysteine Alanine Valine Tyrosine Proline)
    for aa in "${amino_acids[@]}"; do
      echo "$aa : ${#aa}"
    done
    ;;
  2)
    file="$1"
    [[ -z "$file" || ! -f "$file" ]] && { echo "Usage: $0 2 <file>"; exit 1; }
    while IFS= read -r line; do
      echo "$line  | length: ${#line}"
    done < "$file"
    ;;
  3)
    counter=0
    quote="This script will run again"
    until (( counter >= 10 )); do
      echo "$quote"
      quote="$quote and again"
      ((counter+=1))
    done
    echo "Until it is done"
    ;;
  4)
    print_info () {
      local name="Daniel Cho"
      local user="$USER"
      local now="$(date)"
      local cwd="$(pwd)"
      echo "Name: $name"
      echo "Username: $user"
      echo "Date/Time: $now"
      echo "Current directory: $cwd"
    }
    print_info
    ;;
  5)
    add_two () {
      local a="$1" b="$2"
      local sum
      sum=$(echo "$a + $b" | bc)
      echo "a=$a, b=$b, sum=$sum"
      return 0
    }
    add_two "$1" "$2"
    ;;
  *)
    echo "Usage: $0 <part 1..5> [args]"; exit 1;
esac
