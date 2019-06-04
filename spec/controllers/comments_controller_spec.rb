require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  before { geocoder_default_mock }

  describe 'GET #edit' do
    let(:comment) { create(:comment) }

    it '@commentに要求されたコメントを割り当てること' do
      get :edit, params: { id: comment }, xhr: true
      expect(assigns(:comment)).to eq(comment)
    end

    it ':editテンプレートを表示すること' do
      get :edit, params: { id: comment }, xhr: true
      expect(response).to render_template(:edit)
    end
  end

  describe 'POST #create' do
    include_context 'user_authorized'

    let!(:church) { create(:church) }
    let(:comment) { build(:comment, church: church) }

    context '有効な属性の場合' do
      it 'データベースに新しいコメントを保存すること' do
        binding.pry
        expect{
          post :create, params: { comment: attributes_for(:comment), church_id: comment.church_id }, xhr: true
        }.to change(Comment, :count).by(1)
      end

      it '@churchに要求された教会を割り当てること' do
        post :create, params: { comment: attributes_for(:comment), church_id: comment.church_id }, xhr: true
        expect(assigns(:church)).to eq(church)
      end

      it ':createテンプレートを表示すること' do
        post :create, params: { comment: attributes_for(:comment), church_id: comment.church_id }, xhr: true
        expect(response).to render_template(:create)
      end
    end

    context '無効な属性の場合' do
      it 'データベースに新しいコメントを保存しないこと' do
        expect{
          post :create, params: { comment: attributes_for(:comment, comment: nil), church_id: comment.church_id }, xhr: true
        }.not_to change(Comment, :count)
      end

      it ':createテンプレートを再表示すること' do
        post :create, params: { comment: attributes_for(:comment, comment: nil), church_id: comment.church_id }, xhr:true
        expect(response).to render_template(:create)
      end
    end
  end

  describe 'PATCH #update' do
    include_context 'user_authorized'

    let!(:comment) { create(:comment) }

    context '有効な属性の場合' do
      it '要求された@commentを取得すること' do
        patch :update, params: { id: comment, comment: attributes_for(:comment) }, xhr: true
        expect(assigns(:comment)).to eq(comment)
      end

      it 'commentの属性を変更すること' do
        patch :update, params: { id: comment, comment: attributes_for(:comment, comment: 'RSpecによるテスト') }, xhr: true
        comment.reload
        expect(comment.comment).to eq('RSpecによるテスト')
      end

      it ':updateテンプレートを表示すること' do
        patch :update, params: { id: comment, comment: attributes_for(:comment) }, xhr: true
        expect(response).to render_template(:update)
      end
    end

    context '無効な属性の場合' do
      it 'commentの属性を変更しないこと' do
        patch :update, params: { id: comment, comment: attributes_for(:comment, comment: nil) }, xhr: true
        comment.reload
        expect(comment.comment).to eq('テスト')
      end

      it ':updateテンプレートを表示すること' do
        patch :update, params: { id: comment, comment: attributes_for(:comment, comment: nil) }, xhr: true
        expect(response).to render_template(:update)
      end
    end
  end

  describe 'DELETE #destroy' do
    include_context 'user_authorized'

    let!(:comment) { create(:comment) }

    context '有効な属性の場合' do
      it 'コメントを削除すること' do
        expect {
          delete :destroy, params: { id: comment, comment: attributes_for(:comment) }, xhr: true
        }.to change(Comment, :count).by(-1)
      end

      it ':destroyテンプレートを表示すること' do
        delete :destroy, params: { id: comment, comment: attributes_for(:comment) }, xhr: true
        expect(response).to render_template(:destroy)
      end
    end
  end
end
