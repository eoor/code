def ask(prompt)
  print prompt + ': '
  gets.chomp
end

puts ask('Enter something')