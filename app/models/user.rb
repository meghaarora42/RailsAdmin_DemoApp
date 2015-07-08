class User < ActiveRecord::Base

  has_many :address, :dependent => :destroy
  has_many :order, :dependent => :destroy

end