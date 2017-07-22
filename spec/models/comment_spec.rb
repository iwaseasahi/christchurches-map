require 'rails_helper'

RSpec.describe Comment, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it '有効なファクトリを持つこと' do
    expect(FactoryGirl.build(:comment)).to be_valid
  end

  it 'コメントが未入力であれば、無効な状態であること' do
    comment = FactoryGirl.build(:comment, comment: nil)
    comment.valid?
    expect(comment.errors[:comment]).to include('を入力してください')
  end

  it 'ユーザーIDが未入力であれば、無効な状態であること' do
    comment = FactoryGirl.build(:comment, user_id: nil)
    comment.valid?
    expect(comment.errors[:user_id]).to include('を入力してください')
  end

  it '教会IDが未入力であれば、無効な状態であること' do
    comment = FactoryGirl.build(:comment, church_id: nil)
    comment.valid?
    expect(comment.errors[:church_id]).to include('を入力してください')
  end

  it 'timeメソッドがnilにならないこと' do
    comment = FactoryGirl.build(:comment)
    expect(comment.time).not_to eq nil
  end
end
