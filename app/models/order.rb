class Order < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :products

	def add_to_order(product_id)
		@product = products.find_by(product_id)	
		#find the product

		@product.save
		#add the product to the order (???) 
	end

end
