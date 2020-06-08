require 'rails_helper'

RSpec.describe Churches::LikesController, type: :controller do
  before { geocoder_default_mock }

  describe 'POST #create' do
    include_context 'user_authorized'

    let!(:church) { create(:church) }

    context '有効な属性の場合' do
      it '要求された教会を取得すること' do
        post :create, params: { like: attributes_for(:like), church_id: church.id }, xhr: true
        expect(assigns(:church)).to eq church
      end

      it 'データベースに新しいlikeが保存されること' do
        expect{
          post :create, params: { like: attributes_for(:like), church_id: church.id }, xhr: true
        }.to change(Like, :count).by(1)
      end

      it ':likeテンプレートが表示されること' do
        post :create, params: { like: attributes_for(:like), church_id: church.id }, xhr: true
        expect(response).to render_template(:create)
      end
    end
  end

  describe 'DELETE #destroy' do
    include_context 'user_authorized'

    let!(:church) { create(:church) }
    let!(:like) { create(:like, user: current_user, church: church) }

    context '有効な属性の場合' do
      it 'likeを削除すること' do
        expect {
          delete :destroy, params: { like: like, church_id: like.church_id }, xhr: true
        }.to change(Like, :count).by(-1)
      end

      it ':deleteテンプレートを表示すること' do
        delete :destroy, params: { like: like, church_id: like.church_id }, xhr: true
        expect(response).to render_template(:destroy)
      end
    end
  end
end
