def password(length)
  abc = [('a'..'z').to_a, ('A'..'Z').to_a, ('0'..'9').to_a, "!\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~".chars]
  abc_ = abc.join
  loop do
    input = ''
    length.times { input << abc_[rand(abc_.length)] }
    output = input.chars
    if (output & abc[0]).any? && (output & abc[1]).any? && (output & abc[2]).any? && (output & abc[3]).any?
      return output.join
      break
    end
  end
end

puts password(8)
