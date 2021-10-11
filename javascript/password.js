function RandInt(min, max) {  
  return Math.floor(Math.random() * (max - min) + min);
}

function HasAny(target, source) {
  return (source.some(ele => target.includes(ele)));
}

let abc = [
  'abcdefghijklmnopqrstuvwxyz'.split(''),
  'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split(''),
  '0123456789'.split(''),
  "!\"#$%&\'()*+,-./:;<=>?@[\\]^_`{|}~".split('')
];

function Password(length) {
  let abc_ = abc.flat(1);
  while (true) {
    var output = [];
    while (output.length < length) {
      output.push(abc_[RandInt(0, abc_.length)]);
    }
    let test = []
    abc.forEach(function (item, index) {
      test.push(HasAny(output, abc[index]));
    });
    if (test.every(Boolean)) {
      return(output.join(''));
    } else {
      continue
    }
  }
}

console.log(Password(8));
