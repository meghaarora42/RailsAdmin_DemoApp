class User < ActiveRecord::Base

	validates_presence_of :email, :first_name, :last_name, :country, :addresses
	# Till the time we are not using a proper authentication method 
  attr_accessor :password, :password_confirmation	

  has_many :addresses, :dependent => :destroy
  has_many :order, :dependent => :destroy
end