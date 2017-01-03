class CreateWishlistProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :wishlist_products do |t|
      t.integer :wishlist_id
      t.integer :product_id

      t.timestamps
    end
  end
end
