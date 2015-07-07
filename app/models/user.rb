class User < ActiveRecord::Base

  has_many :addresses, :dependent => :destroy
  has_many :orders, :dependent => :destroy

end