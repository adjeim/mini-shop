class User < ApplicationRecord
	has_many :wishlists, dependent: :destroy
	has_many :orders
	
	# has_secure_password
	# validates_confirmation_of :password
	# validates_presence_of :password, on: :create
end
