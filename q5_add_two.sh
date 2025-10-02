#!/usr/bin/env bash
# Calls add_two three times with different numbers

add_two () {
  local a="$1" b="$2"
  local sum
  sum=$(echo "$a + $b" | bc)
  echo "a=$a, b=$b, sum=$sum"
  return 0
}

add_two 3 9
add_two 10.5 2.25
add_two -4 7
