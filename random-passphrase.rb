def passphrase(length = 4)
    words = File.read('dictionary.txt').lines.map &:split
    output = []
    while output.length < length
        word = words[rand(words.length)]
        unless output.include? word
            output.push(word)
        end
    end
    return output.join(' ')
end

puts passphrase()