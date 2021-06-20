def ask(question)
  print question
  gets.chomp
end

def hex_to_rgb(hex)
  case hex.length
  when 3
    (hex.scan(/./).map { |n| (n * 2).to_i 16 }).join(' ')
  when 6
    (hex.scan(/../).map { |n| n.to_i 16 }).join(' ')
  end
end

puts hex_to_rgb(ask('#'))
