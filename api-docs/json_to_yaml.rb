#!/usr/bin/env ruby

require 'crack'

# json file with api definition
in_file_name = ARGV[0]

# yaml file output
out_file_name = ARGV[1]

# read in json
json = File.read(in_file_name)

# convert json to hash
hash = Crack::JSON.parse(json)

# convert hash to string
yaml = hash.to_yaml

# write string to out_file_name
File.open(out_file_name, 'w') {|f| f.write(yaml) }
