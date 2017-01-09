class User < ApplicationRecord
	has_one :wishlist, dependent: :destroy
	has_one :order

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
	
	validates :password, presence: true, length: {minimum: 8, maximum: 32}, confirmation: true
	validates :password_confirmation, presence: true

	validates :fname, presence: true
	validates :lname, presence: true
	validates :address, presence: true



	
	# has_secure_password
	# validates_confirmation_of :password
	# validates_presence_of :password, on: :create
end
