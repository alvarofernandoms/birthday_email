# frozen_string_literal: true

require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  subject(:user) { create :user }

  describe "birthday" do
    let(:mail) { UserMailer.birthday(user) }

    it "renders the headers" do
      expect(mail.subject).to eq("Happy Birthday!")
      expect(mail.to).to eq(["email3@domain.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("We wish you a happy birthday.")
    end
  end
end
