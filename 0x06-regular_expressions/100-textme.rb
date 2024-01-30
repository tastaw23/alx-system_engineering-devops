#!/usr/bin/env ruby

# Accept one argument (log file path)
log_file_path = ARGV[0]

# Check if the log file path is provided
if log_file_path.nil?
  puts 'Usage: ./100-textme.rb [log_file_path]'
  exit 1
end

# Read the log file
log_data = File.read(log_file_path)

# Define the regular expression pattern
pattern = /\[(from|to|flags):(.*?)(?=\])/

# Use the regular expression to find matches
matches = log_data.scan(pattern)

# Extract sender, receiver, and flags information
sender = ''
receiver = ''
flags = ''

matches.each do |match|
  case match[0]
  when 'from'
    sender = match[1]
  when 'to'
    receiver = match[1]
  when 'flags'
    flags = match[1]
  end
end

# Output the result
puts "#{sender},#{receiver},#{flags}"

