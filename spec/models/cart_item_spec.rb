require 'rails_helper'

RSpec.describe CartItem, type: :model do
  describe "validations" do
    it "presence of" do
      expect(CartItem.new(product: nil)).to be_invalid
      expect(CartItem.new(price: nil)).to be_invalid
      expect(CartItem.new(quantity: nil)).to be_invalid
    end
  end
end