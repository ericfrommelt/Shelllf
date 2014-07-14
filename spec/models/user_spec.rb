require 'rails_helper'

describe User do
  let(:eric) { User.new(username: "mmeltdown", first_name: "Eric", password: "1234", password_confirmation: "1234") }
  it "is valid with a username, first name, and password" do
    expect(eric).to be_valid
  end

  it { is_expected.to have_and_belong_to_many :books }
end
