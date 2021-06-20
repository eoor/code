def passphrase(length)
  words = File.read(File.expand_path('./dictionary.txt', __dir__)).lines.map(&:split)
  output = []
  while output.length < length
    word = words[rand(words.length)]
    output.push(word) unless output.include? word
  end
  output.join(' ')
end

puts passphrase(3)
