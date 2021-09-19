#!/usr/bin/env ruby

class String
  def style(code); "\033[#{code}m#{self}\033[0m" end
end

def password(length)
  abc = [
    'abcdefghijklmnopqrstuvwxyz'.chars,
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.chars,
    '0123456789'.chars,
    "!\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~".chars
  ]
  abc_ = abc.join
  loop do
    input = ''
    length.times do
      input << abc_[rand(abc_.length)]
    end
    output = input.chars
    if (output & abc[0]).any? && (output & abc[1]).any? && (output & abc[2]).any? && (output & abc[3]).any?
      return output.join
      break
    end
  end
end

if ARGV.length != 0
  case ARGV[0].to_i
  when 4...257
    puts password(ARGV[0].to_i).style(101)
  else
    puts 'Error: Invalid argument.'.style(2)
  end
else
  puts password(16).style(101)
end
