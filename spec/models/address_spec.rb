require 'rails_helper'

RSpec.describe Address, type: :model do
  describe "validations" do
    it "presence of" do
      expect(Address.new(house_no: nil)).to be_invalid
      expect(Address.new(street_name: nil)).to be_invalid
      expect(Address.new(city: nil)).to be_invalid
      expect(Address.new(country: nil)).to be_invalid
      expect(Address.new(pin_code: nil)).to be_invalid
    end
  end
end