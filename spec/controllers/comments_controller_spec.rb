require 'rails_helper'

RSpec.describe CommentsController, :type => :controller do

  describe 'GET #edit' do
    it '@commentに要求されたコメントを割り当てること' do
      comment = FactoryGirl.create(:comment)
      get :edit, params: { id: comment }, xhr: true
      expect(assigns(:comment)).to eq(comment)
    end

    it ':editテンプレートを表示すること' do
      comment = FactoryGirl.create(:comment)
      get :edit, params: { id: comment }, xhr: true
      expect(response).to render_template(:edit)
    end
  end

  describe 'POST #create' do
    before :each do
      user = FactoryGirl.create(:user)
      allow(controller).to receive(:current_user).and_return(user)
    end

    context '有効な属性の場合' do
      it 'データベースに新しいコメントを保存すること' do
        comment = FactoryGirl.create(:comment)
        expect{
          post :create, params: { comment: FactoryGirl.attributes_for(:comment), church_id: comment.church_id }, xhr: true
        }.to change(Comment, :count).by(1)
      end

      it '@churchに要求された教会を割り当てること' do
        comment = FactoryGirl.create(:comment)
        church = Church.find(comment.church_id)
        post :create, params: { comment: FactoryGirl.attributes_for(:comment), church_id: comment.church_id }, xhr: true
        expect(assigns(:church)).to eq(church)
      end

      it ':createテンプレートを表示すること' do
        comment = FactoryGirl.create(:comment)
        post :create, params: { comment: FactoryGirl.attributes_for(:comment), church_id: comment.church_id }, xhr: true
        expect(response).to render_template(:create)
      end
    end

    context '無効な属性の場合' do
      it 'データベースに新しいコメントを保存しないこと' do
        comment = FactoryGirl.create(:comment)
        expect{
          post :create, params: { comment: FactoryGirl.attributes_for(:comment, comment: nil), church_id: comment.church_id }, xhr: true
        }.not_to change(Comment, :count)
      end

      it ':createテンプレートを再表示すること' do
        comment = FactoryGirl.create(:comment)
        post :create, params: { comment: FactoryGirl.attributes_for(:comment, comment: nil), church_id: comment.church_id }, xhr:true
        expect(response).to render_template(:create)
      end
    end
  end

  describe 'PATCH #update' do
    before :each do
      @comment = FactoryGirl.create(:comment)
    end

    context '有効な属性の場合' do
      it '要求された@commentを取得すること' do
        patch :update, params: { id: @comment, comment: FactoryGirl.attributes_for(:comment) }, xhr: true
        expect(assigns(:comment)).to eq(@comment)
      end

      it 'commentの属性を変更すること' do
        patch :update, params: { id: @comment, comment: FactoryGirl.attributes_for(:comment, comment: 'RSpecによるテスト') }, xhr: true
        @comment.reload
        expect(@comment.comment).to eq('RSpecによるテスト')
      end

      it ':updateテンプレートを表示すること' do
        patch :update, params: { id: @comment, comment: FactoryGirl.attributes_for(:comment) }, xhr: true
        expect(response).to render_template(:update)
      end
    end

    context '無効な属性の場合' do
      it 'commentの属性を変更しないこと' do
        patch :update, params: { id: @comment, comment: FactoryGirl.attributes_for(:comment, comment: nil) }, xhr: true
        @comment.reload
        expect(@comment.comment).to eq('テスト')
      end

      it ':updateテンプレートを表示すること' do
        patch :update, params: { id: @comment, comment: FactoryGirl.attributes_for(:comment, comment: nil) }, xhr: true
        expect(response).to render_template(:update)
      end
    end
  end

  describe 'DELETE #destroy' do
    before :each do
      @comment = FactoryGirl.create(:comment)
    end

    it 'コメントを削除すること' do
      delete :destroy, params: { id: @comment, comment: FactoryGirl.attributes_for(:comment) }, xhr: true
      @comment.reload
      expect(@comment.soft_destroyed_at).not_to eq(nil)
    end

    it ':destroyテンプレートを表示すること' do
      delete :destroy, params: { id: @comment, comment: FactoryGirl.attributes_for(:comment) }, xhr: true
      @comment.reload
      expect(response).to render_template(:destroy)
    end


  end

end
