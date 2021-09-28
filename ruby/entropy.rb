def entropy(chars, length)
  Math.log2(chars ** length).round
end

def strength(entropy)
  case entropy
  when ..27; 'Very weak'
  when 28..35; 'Weak'
  when 36..59; 'Average'
  when 60..127; 'Strong'
  when 128..; 'Super strong'
  end
end

puts entropy(94, 8)
