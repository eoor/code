function RandomInt(min, max) {  
    return Math.floor(Math.random() * (max - min) + min);
}

function Passphrase(length = 4) {
    var fs = require('fs');
    var words = fs.readFileSync(__dirname + '/dictionary.txt', 'utf8').toString().split('\n');
    var output = []

    while (output.length < length) {
        var word = words[RandomInt(0, words.length)]
        if (!words[word]) {
            output.push(word);
        }
    }

    return output.join(' ');
}

console.log(Passphrase())