require 'byebug'
require 'bcrypt'
class VeDecrypt
def initialize(password,hash_password, salt)
	 @result = hash_password == BCrypt::Engine.hash_secret(password, salt)
end

def decrypt
	result = @result
	puts result
end
end

