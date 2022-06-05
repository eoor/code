begin
  File.open(ARGV[0]).read => input
  File.open(ARGV[0], "w+") { |f| f.write input.chars.shuffle.join }
rescue
  puts "Error: Invalid input"
end