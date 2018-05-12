require 'byebug'
require 'bcrypt'
class VeEncrypt
def initialize(password)
	@salt = BCrypt::Engine.generate_salt
	@password = BCrypt::Engine.hash_secret(password, @salt)
end
def encrypt
	password = {salt: @salt, password: @password}
	puts password
end
end
class VeDecrypt
def initialize(password,hash_password, salt)
	 @result = hash_password == BCrypt::Engine.hash_secret(password, salt)
end

def decrypt
	result = @result
	puts result
end
end
