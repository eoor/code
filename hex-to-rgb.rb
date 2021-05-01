def ask q
  print q; gets.chomp
end

def h2r i
  if i.length == 3
    o = (i.scan(/./).map {|n| (n * 2).to_i 16}).join ", "
  else
    o = (i.scan(/../).map {|n| n.to_i 16}).join ", "
  end
  "rgb(#{o})"
end

puts h2r ask "#"