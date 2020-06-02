require 'rails_helper'

RSpec.describe HomesController, :type => :controller do
  describe 'GET root_path' do
    it 'topテンプレートを表示すること' do
      expect(get: root_url(subdomain: nil)).to route_to(
        controller: 'homes',
        action: 'top')
    end
  end
end
