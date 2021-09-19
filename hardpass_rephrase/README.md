# Hardpass/Rephrase

Strong random password and passphrase generators created with [Ruby](https://www.ruby-lang.org/en/).

## Hardpass

Generates a password from a random selection of characters from the following groups:

* `abcdefghijklmnopqrstuvwxyz`
* `ABCDEFGHIJKLMNOPQRSTUVWXYZ`
* `0123456789`
* <code>!"#$%&'()*+,-./:;<=>?@_[\\]^&grave;{|}~</code>

At least 1 character from each group is selected.

![](screenshots/hardpass.png =684x)

#### Usage

>`./hardpass` _Generates an 8-character long password._

>`./hardpass 17` _Generates a 17-character long password. Accepts values between `4` and `64`._

## Rephrase

Generates a passphrase from a random selection of _7776_ English words from the [Diceware](https://theworld.com/~reinhold/diceware.html) wordlist.

![](screenshots/rephrase.png =684x)

#### Usage

>`./rephrase` _Generates 3-word long passphrase._

>`./rephrase 5` _Generates an 5-word long passphrase. Accepts values between `2` and `16`._
