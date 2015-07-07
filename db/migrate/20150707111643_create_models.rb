class CreateModels < ActiveRecord::Migration

  def change
	create_table "users", force: true do |t|
      t.string   "email",                  default: "", null: false
      t.string   "encrypted_password",     default: "", null: false
      t.string   "country"
      t.string   "first_name"
      t.string   "last_name"
      t.datetime "created_at"
      t.datetime "updated_at"
	end

	add_index "users", ["email"], name: "index_users_on_email", unique: true

	create_table "products", force: true do |t|
      t.string   "name"
      t.text     "description_small"
      t.text     "description_large"
      t.decimal  "price"
      t.integer  "category_id"
      t.integer  "image_url"
      t.integer  "discount_id"
    end

    add_index "products", ["name"], name: "index_products_on_name"
    add_index "products", ["category_id"], name: "index_products_on_category_id"

	create_table "orders", force: true do |t|
	  t.integer  "user_id"
	  t.integer  "address_id"
      t.string   "status"
      t.datetime "created_at"
      t.datetime "updated_at"    
    end

    add_index "orders", ["status"], name: "index_orders_on_status"
    add_index "orders", ["created_at"], name: "index_orders_on_created_at"

	create_table "cart_items", force: true do |t|
	  t.integer  "order_id"
	  t.integer  "product_id"
	  t.decimal  "price"
	  t.integer  "quantity"
	end

	add_index "cart_items", ["order_id"], name: "index_cart_items_on_order_id"
  	add_index "cart_items", ["product_id"], name: "index_cart_items_on_product_id"

    create_table "addresses", force: true do |t|
      t.integer  "user_id"
      t.string   "house_no"
      t.string   "street_name"
      t.string   "city"
      t.string   "country"
      t.integer  "pin_code"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "addresses", ["city"], name: "index_addresses_on_city"

	create_table "categories", force: true do |t|
	  t.string   "name"
	  t.text     "description"
	end

	create_table "reviews", force: true do |t|
	  t.integer  "user_id"
	  t.integer  "product_id"
	  t.decimal  "rating"
	  t.text     "description"
	end

  	add_index "reviews", ["product_id"], name: "index_reviews_on_product_id"

	create_table "discounts", force: true do |t|
	  t.string   "type"
	  t.decimal  "percentage"
	  t.integer  "fixed_amount"
	end

  end
end
