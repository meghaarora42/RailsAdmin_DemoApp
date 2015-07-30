class AddImageToProduct < ActiveRecord::Migration
  def change
  	add_attachment :products, :image
  	remove_column :products, :image_url
  end
end
