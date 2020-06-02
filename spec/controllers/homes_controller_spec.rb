require 'rails_helper'

RSpec.describe HomesController, type: :controller do
  describe 'GET root_path' do
    it 'indexテンプレートを表示すること' do
      expect(get: root_url(subdomain: nil)).to route_to(
        controller: 'homes',
        action: 'index')
    end
  end
end
