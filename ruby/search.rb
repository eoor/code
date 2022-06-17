#!/usr/bin/env ruby

class String
  def style(code); "\033[#{code}m#{self}\033[0m" end
end

if ARGV[0]
  ARGV[0] => search
  Dir["**/*#{search}*"] => results

  results.each do |result|
    puts result.gsub(/#{search}/i) { |match| match.style(4) }
  end

  puts "#{results.length} result(s) for \"#{search}\" in #{Dir.pwd}".style(2)
else
  puts "ERROR"
end