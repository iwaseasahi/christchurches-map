require 'rails_helper'

RSpec.describe Photo, type: :model do
  it '有効な状態であること' do
    photo = build(:photo)

    expect(photo).to be_valid
  end
end
