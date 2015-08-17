require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "validations" do
    it "presence of" do
      expect(Product.new(name: nil)).to be_invalid
      expect(Product.new(price: nil)).to be_invalid
      expect(Product.new(category: nil)).to be_invalid
    end
  end
end