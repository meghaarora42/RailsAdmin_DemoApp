class User < ActiveRecord::Base

	validates_presence_of :email, :first_name, :last_name, :country, :address
	# Till the time we are not using a proper authentication method 
  attr_accessor :password, :password_confirmation	

  has_many :address, :dependent => :destroy
  has_many :order, :dependent => :destroy

end