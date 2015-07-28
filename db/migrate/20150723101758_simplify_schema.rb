class SimplifySchema < ActiveRecord::Migration
  def change
  	drop_table    :categories
  	drop_table    :reviews
  	remove_column :products, :discount_id,       :integer
  	remove_column :products, :category_id,       :integer
  	add_column    :products, :category,          :string
  	remove_column :products, :description_small, :text
  	remove_column :products, :description_large, :text
  	add_column    :products, :description,       :text
  end
end
