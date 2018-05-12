#Gem For Password Encryption using Bcrypt

Step 1 
 	
 	gem install vecrypt

 Step 2 

 	#Encrypt password

    password = VeEncrypt.new('your password')

    salt = password.encrypt[:salt]  #salt is a key
    hash_password = password.encrypt[:password]  #password is a key

   #Decrypt Password

   	password_check = VeDecrypt.new('your password', salt , hash_password)
   	password_check.decrypt # it return true or false
