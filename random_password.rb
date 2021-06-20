def password(length)
  abc = [
    'abcdefghijklmnopqrstuvwxyz'.chars,
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.chars,
    '0123456789'.chars,
    '!\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~'.chars
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

puts password(16)
