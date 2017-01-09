class Product < ApplicationRecord
	has_and_belongs_to_many :orders
	has_and_belongs_to_many :wishlists


  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
