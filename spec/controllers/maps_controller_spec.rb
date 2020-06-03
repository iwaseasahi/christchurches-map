require 'rails_helper'

RSpec.describe MapsController, :type => :controller do
  before { geocoder_default_mock }

  describe 'GET #index' do
    context '有効な属性の場合' do
      it ':indexテンプレートを表示' do
        get :index
        expect(response).to render_template(:index)
      end
    end
  end
end
