class Person < ActiveRecord::Base

	validates :email, presence: true, uniqueness: true
	# validates :username, uniqueness: true
	validates :password, :confirmation => true, length: { minimum: 6 }

	has_secure_password

	def admin?
		self.role == 'admin'
	end

	def user?
		self.role == 'user'
	end

	def self.authenticate(email="", password="")
		user = Person.find_by_email(user)
		if user && user.password == BCrypt::Engine.hash_secret(password)
			user
		else
			nil
		end
	end
end
