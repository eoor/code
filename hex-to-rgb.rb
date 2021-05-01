def ask q
  print q + ": "; gets.chomp
end

def hex_to_rgb input
  input = input[1..-1] if input.include? "#"
  if input.length === 3
    output = (input.scan(/./).map { |n| (n * 2).to_i(16) }).join(", ")
  else
    output = (input.scan(/../).map { |n| n.to_i(16) }).join(", ")
  end
  "RGB: rgb(#{output})"
end

until
  puts hex_to_rgb ask("Hex")
end