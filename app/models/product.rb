class Product < ActiveRecord::Base

  validates_presence_of :name, :description_small, :description_large, :price, :category

  belongs_to :category
  has_many :reviews

end