#!/usr/bin/env ruby

# Accept one argument
input_string = ARGV[0]

# Define the regular expression pattern
pattern = /[A-Z]/

# Use the regular expression to find matches
matches = input_string.scan(pattern)

# Output the matches
puts matches.join

