class Address < ActiveRecord::Base

validates_presence_of :house_no, :street_name, :city, :country, :pin_code

belongs_to :user
  
end