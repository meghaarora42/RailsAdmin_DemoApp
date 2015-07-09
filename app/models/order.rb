class Order < ActiveRecord::Base

  validates_presence_of :status, :user, :address

  belongs_to :user , :foreign_key => :user_id
  belongs_to :address, :foreign_key => :address_id
  has_many :cart_items

end