## Hardpass

Generates a password from a random selection of _A-Z_, _a-z_, _0-9_ and _!"#$%&'()*+,-./:;<=>?@_[\\]^_`{|}~_ characters, using at least 1 character from each group.

`/path/to/hardpass` - _Generates an 8-character long password_
`/path/to/hardpass 17` - _Generates a 17-character long password. Accepts values between *4* and *64*._

## Rephrase

Generates a passphrase from a random selection of _7776_ English words from the [Diceware]:https://theworld.com/~reinhold/diceware.html wordlist.

`/path/to/rephrase` - _Generates 3-word long passphrase._
`/path/to/rephrase 5` - _Generates an 5-word long passphrase. Accepts values between *2* and *16*._

# requirements:

* [Ruby]:https://www.ruby-lang.org/en/