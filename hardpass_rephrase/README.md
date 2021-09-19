## Hardpass

Generates a password from a random selection of `A`&ndash;`Z`, `a`&ndash;`z`, `0`&ndash;`9` and <code>!"#$%&'()*+,-./:;<=>?@_[\]^_&grave;{|}~</code> characters, using _at least_ 1 character from each group.

> `/path/to/hardpass` _Generates an 8-character long password._
>
>`/path/to/hardpass 17` _Generates a 17-character long password. Accepts values between `4` and `64`._

## Rephrase

Generates a passphrase from a random selection of _7776_ English words from the [Diceware](https://theworld.com/~reinhold/diceware.html) wordlist.

><code>/path/to/**rephrase**</code> _Generates 3-word long passphrase._
>
><code>/path/to/**rephrase 5**</code> _Generates an 5-word long passphrase. Accepts values between `2` and `16`._

### Requirements:

* [Ruby](https://www.ruby-lang.org/en/)