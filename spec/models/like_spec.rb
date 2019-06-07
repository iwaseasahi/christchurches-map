require 'rails_helper'

RSpec.describe Like, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it '有効なファクトリを持つこと' do
    expect(build(:like)).to be_valid
  end

  it 'ユーザーIDが未入力の場合、無効な状態であること' do
    like = build(:like, user_id: nil)
    like.valid?
    expect(like.errors[:user_id]).to include('を入力してください')
  end

  it '教会IDが未入力の場合、無効な状態であること' do
    like = build(:like, church_id: nil)
    like.valid?
    expect(like.errors[:church_id]).to include('を入力してください')
  end
end
