class User < ApplicationRecord
	has_one :wishlist, dependent: :destroy
	has_one :order
	
	# has_secure_password
	# validates_confirmation_of :password
	# validates_presence_of :password, on: :create
end
