class Product < ApplicationRecord
	has_and_belongs_to_many :orders
	has_and_belongs_to_many :wishlists


  def self.search(search)
  	where("name LIKE ? OR price LIKE ?", "%#{search}%", "%#{search}%")
  end
end
