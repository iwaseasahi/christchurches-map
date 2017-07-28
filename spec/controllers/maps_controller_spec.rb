require 'rails_helper'

RSpec.describe MapsController, :type => :controller do

  describe 'GET #index' do
    context '有効な属性の場合' do
      it ':indexテンプレートを表示' do
        get :index
        expect(response).to render_template(:index)
      end
    end
  end

  describe 'GET #search' do
    context '有効な属性の場合' do
      it ':searchテンプレートを表示' do
        get :search
        expect(response).to render_template(:search)
      end

      it '@churchesに要求された教会が入っていること' do
        church = FactoryGirl.create(:church)
        get :search, params: { q: { name_cont: church.name } }
        expect(assigns(:churches).first).to eq(church)
      end
    end
  end

end
