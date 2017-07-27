require 'rails_helper'

RSpec.describe LikesController, :type => :controller do
  describe 'POST #like' do
    before :each do
      user = FactoryGirl.create(:user)
      allow(controller).to receive(:current_user).and_return(user)
    end

    context '有効な属性の場合' do
      it '要求された教会を取得すること' do
        church = FactoryGirl.create(:church)
        post :like, params: { like: FactoryGirl.attributes_for(:like), church_id: church.id }, xhr: true
        expect(assigns(:church)).to eq(church)
      end

      it 'データベースに新しいlikeが保存されること' do
        church = FactoryGirl.create(:church)
        like = FactoryGirl.create(:like)
        expect{
          post :like, params: { like: FactoryGirl.attributes_for(:like), church_id: church.id }, xhr: true
        }.to change(Like, :count).by(1)
      end

      it ':likeテンプレートが表示されること' do
        church = FactoryGirl.create(:church)
        post :like, params: { like: FactoryGirl.attributes_for(:like), church_id: church.id }, xhr: true
        expect(response).to render_template(:like)
      end
    end
  end

  describe 'DELETE #unlike' do
    before :each do
      user = FactoryGirl.create(:user)
      allow(controller).to receive(:current_user).and_return(user)
      @like = FactoryGirl.create(:like, user_id: user.id)
    end

    context '有効な属性の場合' do
      it 'likeを削除すること' do
        expect {
          delete :unlike, params: { like: @like, church_id: @like.church_id }, xhr: true
        }.to change(Like, :count).by(-1)
      end

      it ':deleteテンプレートを表示すること' do
        delete :unlike, params: { like: @like, church_id: @like.church_id }, xhr: true
        expect(response).to render_template(:unlike)
      end
    end
  end

end
