class Product < ActiveRecord::Base

	has_attached_file :image, 
					  :styles => { :medium => "300x300>", 
					  :thumb => "100x100>" }, 
					  :default_url => "products/images/default.png"

    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    validates_presence_of :name, :price, :category

end