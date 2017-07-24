require 'rails_helper'

RSpec.describe ChurchesController, :type => :controller do
  describe 'GET #show' do
    it '@churchに要求された教会を割り当てること' do
      church = FactoryGirl.create(:church)
      get :show, params: { id: church }
      expect(assigns(:church)).to eq church
    end

    it '@commentに新しいコメントを割り当てること' do
      church = FactoryGirl.create(:church)
      get :show, params: { id: church }
      expect(assigns(:comment)).to be_a_new(Comment)
    end

    it ':showテンプレートを表示すること' do
      church = FactoryGirl.create(:church)
      get :show, params: { id: church }
      expect(response).to render_template(:show)
    end
  end

  describe 'GET #new' do
    it '@churchに新しい教会を割り当てること' do
      get :new
      expect(assigns(:church)).to be_a_new(Church)
    end

    it ':newテンプレートを表示すること' do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe 'GET #edit' do
    it '@churchに要求された教会を割り当てること' do
      church = FactoryGirl.create(:church)
      get :edit, params: { id: church }
      expect(assigns(:church)).to eq(church)
    end

    it ':editテンプレートを表示すること' do
      church = FactoryGirl.create(:church)
      get :edit, params: { id: church }
      expect(response).to render_template(:edit)
    end
  end

  describe 'POST #create' do
    context '有効な属性の場合' do
      it 'データベースに新しい連絡先を保存すること' do
        expect{
          post :create, params: { church: FactoryGirl.attributes_for(:church) }
        }.to change(Church, :count).by(1)
      end

      it 'churches#showにリダイレクトすること' do
        post :create, params: { church: FactoryGirl.attributes_for(:church) }
        expect(response).to redirect_to church_path(assigns[:church])
      end
    end

    context '無効な属性の場合' do
      it 'データベースに新しい教会を保存しないこと' do
        expect{
          post :create, params: { church: FactoryGirl.attributes_for(:invalid_church) }
        }.not_to change(Church, :count)
      end

      it ':newテンプレートを再表示すること' do
        post :create, params: { church: FactoryGirl.attributes_for(:invalid_church) }
        expect(response).to render_template(:new)
      end
    end
  end

end
