require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it '有効であること' do
    user = create(:user)
    church = create(:church)

    expect(build(:comment, user: user, church: church)).to be_valid
  end

  it 'コメントが未入力であれば、無効な状態であること' do
    comment = build(:comment, comment: nil)
    comment.valid?
    expect(comment.errors[:comment]).to include('を入力してください')
  end

  it 'ユーザーIDが未入力であれば、無効な状態であること' do
    comment = build(:comment, user_id: nil)
    comment.valid?
    expect(comment.errors[:user_id]).to include('を入力してください')
  end

  it '教会IDが未入力であれば、無効な状態であること' do
    comment = build(:comment, church_id: nil)
    comment.valid?
    expect(comment.errors[:church_id]).to include('を入力してください')
  end

  context '#time' do
    it 'timeメソッドが nil にならないこと' do
      comment = create(:comment)
      expect(comment.time).not_to eq nil
    end

    specify do
      comment = create(:comment)

      expect(comment.time).to eq comment.created_at.strftime('%Y-%m-%d %H:%M')
    end
  end
end
