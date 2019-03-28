require 'rails_helper'

RSpec.describe User, type: :model do
  it "not valid without a first name" do
    user = User.new(last_name: "nguyen", email: "abc@gmail.com", admin: false)
    expect(user.save).to be false

    expect("GMNXVK").to start_with("K").or start_with("G")
  end
end


