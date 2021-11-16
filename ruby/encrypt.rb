require "openssl"

class String
  def encrypt(key)
    cipher = OpenSSL::Cipher::AES.new(256, :CBC).encrypt
    cipher.key = key
    cipher.update(self) + cipher.final
  end

  def decrypt(key)
    cipher = OpenSSL::Cipher::AES.new(256, :CBC).decrypt
    cipher.key = key
    cipher.update(self) + cipher.final
  end
end

password = "password"
message = "String"

key = Digest::SHA256.digest(password)

message = message.encrypt(key)
puts message
puts message.decrypt(key)
