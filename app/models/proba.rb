require 'digest'

class Proba < ActiveRecord::Base


attr_accessor :password

attr_accessible :nombre, :correo, :password, :password_confirmation, :per_id

	belongs_to :per, :foreign_key=>'per_id'

	validates :per_id, :uniqueness => {:case_sensitive => false} 

before_save :encrypt_password
	def has_password?(submitted_password)
	   # Compare encrypted_password with the encrypted version of
	   # submitted_password.
	   encrypted_password == encrypt(submitted_password)
	end

	def self.authenticate(email, submitted_password)
	   persona = find_by_email(email)
	   return nil if persona.nil?
	   return persona if persona.has_password?(submitted_password)
	end
	#solo para rememberMe??
	def self.authenticate_with_salt(id, cookie_salt)
	   user = find_by_id(id)
	   (user && user.salt == cookie_salt) ? user : nil
	end
private
	   def encrypt_password
		self.salt = make_salt if new_record?
		self.encrypted_password = encrypt(password) if password.present?
	   end

	   def encrypt(string)
		secure_hash("#{salt}--#{string}")
	   end

	   def make_salt
		secure_hash("#{Time.now.utc}--#{password}")
	   end

	   def secure_hash(string)
		Digest::SHA2.hexdigest(string)
	   end


end
