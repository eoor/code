def password(length = 8)
    chars = [
        "abcdefghijklmnopqrstuvwxyz".split(""), "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split(""),
        "0123456789".split(""), "!\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~".split("")
    ]
    while true
        input = ""
        length.times do
            input << chars.join[rand(chars.join.length)]
        end
        output = input.split("")
        if (output & chars[0]).any? and (output & chars[1]).any? and (output & chars[2]).any? and (output & chars[3]).any?
            return "\e[7m#{output.join}\e[27m"
            break
        end
    end
end

if ARGV[0]
    puts password ARGV[0].to_i 
else
    puts password
end