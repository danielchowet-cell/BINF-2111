#!/usr/bin/env bash
# Defines and CALLS a function to print requested info

print_info () {
  local name="Daniel Cho"
  local user="$USER"
  local now
  now="$(date)"
  local cwd
  cwd="$(pwd)"

  echo "Name: $name"
  echo "Username: $user"
  echo "Date/Time: $now"
  echo "Current directory: $cwd"
}

print_info
