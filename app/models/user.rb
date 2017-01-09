class User < ApplicationRecord
	has_one :wishlist, dependent: :destroy
	has_one :order

	validates :email, presence: true, uniqueness: true
	validates :password, presence: true
	validates :fname, presence: true
	validates :lname, presence: true
	validates :address, presence: true

	
	# has_secure_password
	# validates_confirmation_of :password
	# validates_presence_of :password, on: :create
end
