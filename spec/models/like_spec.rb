require 'rails_helper'

RSpec.describe Like, :type => :model do
  it '有効な状態であること' do
    like = build(:like)

    expect(like).to be_valid
  end

  it 'ユーザーIDが未入力の場合、無効な状態であること' do
    like = build(:like, user_id: nil)
    like.valid?

    expect(like.errors[:user]).to include('を入力してください')
  end

  it '教会IDが未入力の場合、無効な状態であること' do
    like = build(:like, church_id: nil)
    like.valid?

    expect(like.errors[:church]).to include('を入力してください')
  end
end
