class Wishlist < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :products


	def add_to_wishlist(product_id)
		@wishlist = Wishlist.find(params[:id])

		@products = @wishlist.products
		@product = Product.find(params[product_id])	
		#find the product

		@products.push(@product)
		# @products.save
		#add the product to the order (???) 

		redirect @wishlist
	end

	# def add_to_wishlist
 #  end

 #  def remove_from_wishlist
 #  end
end
