#!/bin/bash

# This script calculates simple interest given principal,
# annual rate of interest and time period in years.

# Calculate the simple interest.
function calculate_simple_interest() {
  local principal="$1"
  local rate="$2"
  local time="$3"

  local simple_interest=$((principal * rate * time / 100))
  echo "$simple_interest"
}

# Get the user's input.
echo "Enter the principal:"
read principal
echo "Enter rate of interest per year:"
read rate
echo "Enter time period in years:"
read time

# Check for errors.
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
  echo "Error: Invalid input."
  exit 1
fi

# Calculate the simple interest.
simple_interest=$(calculate_simple_interest "$principal" "$rate" "$time")

# Display the results.
echo "The simple interest is: $simple_interest"
