#!/usr/bin/env bash
# Implements the provided pseudocode with an until loop

counter=0
quote="This script will run again"

until (( counter >= 10 )); do
  echo "$quote"
  quote="$quote and again"
  ((counter+=1))
done

echo "Until it is done"
