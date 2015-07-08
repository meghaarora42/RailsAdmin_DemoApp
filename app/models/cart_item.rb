class CartItem < ActiveRecord::Base

validates_presence_of :product, :price, :quantity 

belongs_to :order 
belongs_to :product, :foreign_key => :product_id


end