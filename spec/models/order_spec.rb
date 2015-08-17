require 'rails_helper'

RSpec.describe Order, type: :model do
  describe "validations" do
    it "presence of" do
      expect(Order.new(status: nil)).to be_invalid
      expect(Order.new(user: nil)).to be_invalid
      expect(Order.new(address: nil)).to be_invalid
    end
  end
end