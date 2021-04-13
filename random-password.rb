def password(length = 8)
    chars = [
        "abcdefghijklmnopqrstuvwxyz".split(""),
        "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split(""),
        "0123456789".split(""),
        "!\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~".split("")
    ]
    chars_joined = chars.join
    while true
        input = ""
        length.times do
            input << chars_joined[rand(chars_joined.length)]
        end
        output = input.split("")
        if (output & chars[0]).any? and (output & chars[1]).any? and (output & chars[2]).any? and (output & chars[3]).any?
            return output.join
            break
        end
    end
end

puts password 16