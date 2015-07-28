require 'open-uri'
require 'active_record'

# Delete existing records
Address.delete_all
CartItem.delete_all
Order.delete_all
Product.delete_all
User.delete_all

# Create users with addresses
NUMBER_OF_USERS = 120

NUMBER_OF_USERS.times do
  country = FFaker::Address.country
  user = User.create!(
    email: FFaker::Internet.email,
    country: country,
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    addresses: [Address.create!(
	    house_no: FFaker::Address.secondary_address,
	    street_name: FFaker::Address.street_address,
	    city: FFaker::Address.city, 
      country: country,
	    pin_code: 1 + rand(99999)
	)]
  ) 
end 

# Create products
YAML.load_file(File.expand_path("../seeds/products.yml", __FILE__)).each do |product|
  Product.create! product
end

NUMBER_OF_PRODUCTS = Product.count

# Create orders and cart_items
NUMBER_OF_ORDERS = 100

user_ids = User.pluck(:id)
product_ids = Product.pluck(:id)

NUMBER_OF_ORDERS.times do
  user = User.find(user_ids.sample)
  order = user.order.create!(status: "Active", address: user.addresses.first )
  number_of_cart_items = rand(4) + 1

  number_of_cart_items.times do
    product = Product.find(product_ids.sample)
    CartItem.create! do |item|
      item.order = order
      item.product = product
      item.quantity = rand(3) + 1
      item.price = product.price*item.quantity
    end
  end

end
