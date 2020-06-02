require 'rails_helper'

RSpec.describe Church, type: :model do
  before { geocoder_default_mock }

  it '有効な状態であること' do
    church = build(:church)

    expect(church).to be_valid
  end

  it '電話番号が入力されていれば表示すること' do
    church = create(:church, :with_info)

    expect(church.display_tel).to eq church.tel
  end

  it '電話番号が未入力されていれば未設定を表示すること' do
    church = create(:church)

    expect(church.display_tel).to eq '未設定'
  end

  it 'メールアドレスが入力されていればaタグで表示すること' do
    church = create(:church, :with_info)

    expect(church.display_email).to eq "<a href='mailto:#{church.email}'>メールはこちら</a>"
  end

  it 'メールアドレスが未入力されていれば未設定を表示すること' do
    church = create(:church)

    expect(church.display_email).to eq '未設定'
  end

  it 'ホームページが入力されていれば表示すること' do
    church = create(:church, :with_info)

    expect(church.display_url).to eq "<a href=#{church.url} target='_blank'>ホームページはこちら</a>"
  end

  it 'ホームページが未入力されていれば未設定を表示すること' do
    church = create(:church)

    expect(church.display_url).to eq '未設定'
  end

  it '教会画像がアップロードされていない場合でも、church_top_2.jpg が表示されること' do
    church = create(:church)

    expect(church.top_image_url(:thumb)).to include('church_top_2')
  end
end
