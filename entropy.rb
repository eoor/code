def entropy(chars_count, length)
    return Math.log(chars_count ** length, 2).round
end

puts entropy(94, 16)