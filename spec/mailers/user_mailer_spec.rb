require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "registration_confirmation" do
    let!(:current_user) { create(:user) }
    let(:mail) { UserMailer.registration_confirmation(current_user) }

    it "renders the headers" do
      expect(mail.subject).to eq("ユーザーを登録しました。")
      expect(mail.to.first).to include 'test@example'
      expect(mail.from).to eq(['j.c.project153@gmail.com'])
    end
  end
end
