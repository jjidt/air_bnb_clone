require 'rails_helper'

RSpec.describe User, :type => :model do
  it {should have_many :listings}

  describe User do
    it "sends an email when the user is created" do
      user = FactoryGirl.create(:user)
      ActionMailer::Base.deliveries.last.to.should eq [user.email]
    end
  end

end
