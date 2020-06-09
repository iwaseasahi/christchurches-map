require 'rails_helper'

RSpec.describe Church, type: :model do
  before { geocoder_default_mock }

  it '有効な状態であること' do
    church = build(:church)

    expect(church).to be_valid
  end

  it '教会画像がアップロードされていない場合でも、church_top_2.jpg が表示されること' do
    church = create(:church)

    expect(church.top_image_url(:thumb)).to include('church_top_2')
  end
end
