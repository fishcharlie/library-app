class User < ApplicationRecord
	has_many :library_users
	has_many :libraries, through: :library_users

	BCrypt::Engine.cost = 12

	validates :email, presence: true, uniqueness: true


	def self.confirm(params)
	  	@user = User.find_by({email: params[:email]})
	  	@user.try(:authenticate, params[:password])
	end

	has_secure_password

end
