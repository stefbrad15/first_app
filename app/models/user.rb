class User < ActiveRecord::Base
	#global constants
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	#callbacks
	before_save { self.email = email.downcase }

	#validations
	validates :name, presence: true, length: { maximum: 50 }
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
		uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6 }
	has_secure_password

	#Relational definitions
	has_many :microposts
end
