require 'rails_helper'

RSpec.describe HomesController, :type => :controller do
  describe 'GET root_path' do
    it 'topテンプレートを表示すること' do
      expect(get: root_url(subdomain: nil)).to route_to(
        controller: 'homes',
        action: 'top')
    end
  end
  describe 'GET #contact' do
    it 'contactテンプレートを表示すること' do
      get :contact
      expect(response).to render_template(:contact)
    end
  end
end
