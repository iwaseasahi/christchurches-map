require 'rails_helper'

RSpec.describe Church, :type => :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it '教会名・都道府県・住所・教団教派が入力されていれば有効な状態であること' do
    church = Church.new(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17'
    )
    expect(church).to be_valid
  end

  it '教会名が未入力であれば無効な状態であること' do
    church = Church.new(
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17'
    )
    church.valid?
    expect(church.errors[:name]).to include("を入力してください")
  end

  it '都道府県が未入力であれば無効な状態であること' do
    church = Church.new(
      name: 'サランパン',
      group_id: 176,
      address: '東京都新宿区百人町2-18-17'
    )
    church.valid?
    expect(church.errors[:prefecture_id]).to include("を入力してください")
  end

  it '住所が未入力であれば無効な状態であること' do
    church = Church.new(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13
    )
    church.valid?
    expect(church.errors[:address]).to include("を入力してください")
  end

  it '教団教派が未入力であれば無効な状態であること' do
    church = Church.new(
      name: 'サランパン',
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17'
    )
    church.valid?
    expect(church.errors[:group_id]).to include("を入力してください")
  end

  it '電話番号が入力されていれば表示すること' do
    church = Church.new(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17',
      tel: '0123456789'
    )
    expect(church.display_tel).to eq '0123456789'
  end

  it '電話番号が未入力されていれば未設定を表示すること' do
    church = Church.new(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17'
    )
    expect(church.display_tel).to eq '未設定'
  end

  it 'メールアドレスが入力されていればaタグで表示すること' do
    church = Church.new(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17',
      email: 'j.c.project153@gmail.com'
    )
    expect(church.display_email).to eq "<a href='mailto:j.c.project153@gmail.com'>メールはこちら</a>"
  end

  it 'メールアドレスが未入力されていれば未設定を表示すること' do
    church = Church.new(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17'
    )
    expect(church.display_email).to eq '未設定'
  end

  it 'ホームページが入力されていれば表示すること' do
    church = Church.new(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17',
      url: 'https://www.christchurches-map.com/'
    )
    expect(church.display_url).to eq "<a href=https://www.christchurches-map.com/ target='_blank'>ホームページはこちら</a>"
  end

  it 'ホームページが未入力されていれば未設定を表示すること' do
    church = Church.new(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17'
    )
    expect(church.display_url).to eq '未設定'
  end

  it '教会が新規登録された場合、緯度が入力されること' do
    church = Church.create(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17'
    )
    expect(church.latitude).not_to eq nil
  end

  it '教会が新規登録された場合、経度が入力されること' do
    church = Church.create(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17'
    )
    expect(church.longitude).not_to eq nil
  end

  it '教会画像がアップロードされていない場合でも、church_top_2.jpgが表示されること' do
    church = Church.create(
      name: 'サランパン',
      group_id: 176,
      prefecture_id: 13,
      address: '東京都新宿区百人町2-18-17'
    )
    expect(church.top_image_url(:thumb)).to include('church_top_2')
  end
end

