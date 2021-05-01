def ask q
  print q; gets.chomp
end

def h2r h
  case h.length

  when 3
    (h.scan(/./).map {|n| (n * 2).to_i 16}).join ","
  when 6
    (h.scan(/../).map {|n| n.to_i 16}).join ","
  else
    "error"
  end
end

puts h2r ask "#"