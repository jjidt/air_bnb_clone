require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do
  describe "signup_confirmation" do
    let(:user) { FactoryGirl.create(:user)}
    let(:mail) { UserMailer.signup_confirmation(user) }

    it "renders the headers" do
      expect(mail.subject).to eq("Sign up confirmation")
      expect(mail.to).to eq([user.email])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).not_to be_empty
    end
  end

end
