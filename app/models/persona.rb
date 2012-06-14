# == Schema Information
#
# Table name: personas
#
#  id                 :integer         not null, primary key
#  nombre             :string(255)
#  email              :string(255)
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#  encrypted_password :string(255)
#  salt               :string(255)
#  perfil_id          :integer
#

require 'digest'

class Persona < ActiveRecord::Base

attr_accessor :password

 #:foreign_key=>'perfil_id',
       	belongs_to :perfil, :inverse_of => :persona
#add_index :personas, :perfil_id, :unique => true

 
	attr_accessible :nombre, :email, :password, :password_confirmation


	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


	validates :nombre, :presence => true,
		  :length => { :maximum => 50 }

	validates :email, :presence => true,
		  :format => { :with => email_regex },
		  :uniqueness => { :case_sensitive => false }

	validates :password, :presence => true,
		  :confirmation => true,
		  :length => { :within => 6..40 }

validates :perfil_id, :uniqueness => {:case_sensitive => false}

	before_save :encrypt_password

	# Return true if the user's password matches the submitted 		password.
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
