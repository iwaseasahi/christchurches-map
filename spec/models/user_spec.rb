require 'rails_helper'

RSpec.describe User, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it '有効なファクトリを持つこと' do
    expect(build(:user)).to be_valid
  end

  it '有効なファクトリで登録できること' do
    expect(create(:user)).to be_valid
  end

  it '姓が未入力であれば無効な状態であること' do
    user = build(:user, last_name: nil)
    user.valid?
    expect(user.errors[:last_name]).to include('を入力してください')
  end

  it '名が未入力であれば無効な状態であること' do
    user = build(:user, first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include('を入力してください')
  end

  it 'メールアドレスが未入力であれば無効な状態であること' do
    user = build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include('を入力してください')
  end

  it 'パスワードが未入力であれば無効な状態であること' do
    user = build(:user, password: nil)
    user.valid?
    expect(user.errors[:password]).to include('を入力してください')
  end

  it '重複したメールアドレスなら無効な状態であること' do
    User.create(
      last_name: '岩瀬',
      first_name: '旭',
      email: 'eb50113@yahoo.co.jp',
      password: 'asahitest'
    )
    user = User.new(
      last_name: '岩瀬',
      first_name: '旭',
      email: 'eb50113@yahoo.co.jp',
      password: 'asahitest'
    )
    user.valid?
    expect(user.errors[:email]).to include('はすでに存在します')
  end

  it 'フルネームを表示すること' do
    user = build(:user)
    expect(user.full_name).to eq("#{user.last_name} #{user.first_name}")
  end
end
