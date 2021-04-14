def password(length)
    abc = ["abcdefghijklmnopqrstuvwxyz".split(""), "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split(""), "0123456789".split(""), "!\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~".split("")]
    abc_ = abc.join

    while true
        input = ""
        length.times do
            input << abc_[rand(abc_.length)]
        end
        output = input.split("")
        if (output & abc[0]).any? and (output & abc[1]).any? and (output & abc[2]).any? and (output & abc[3]).any?
            return output.join
            break
        end
    end
end

puts password 16