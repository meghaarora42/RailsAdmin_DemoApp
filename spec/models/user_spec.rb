require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "presence of" do
      expect(User.new(email: nil)).to be_invalid
      expect(User.new(first_name: nil)).to be_invalid
      expect(User.new(last_name: nil)).to be_invalid
      expect(User.new(country: nil)).to be_invalid
      expect(User.new(addresses: [])).to be_invalid
    end
  end
end