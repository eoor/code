#!/usr/bin/env ruby

ARGV[0] => search

Dir["**/*#{search}*"].each do |result|
  puts result.gsub(/#{search}/i) { |match| "[[[[#{match}]]]]" }
end