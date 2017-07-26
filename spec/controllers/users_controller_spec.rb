require 'rails_helper'

RSpec.describe UsersController, :type => :controller do

  describe 'GET #show' do
    it '@userに要求されたユーザーに割り当てること' do
      user = FactoryGirl.create(:user_test)
      get :show, params: { id: user }
      expect(assigns(:user)).to eq user
    end

    it ':showテンプレートを表示すること' do
      user = FactoryGirl.create(:user_test)
      get :show, params: { id: user }
      expect(response).to render_template(:show)
    end
  end

end
