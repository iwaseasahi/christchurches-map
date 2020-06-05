require 'rails_helper'
require 'carrierwave/test/matchers'

RSpec.describe IconUploader do
  include CarrierWave::Test::Matchers

  let!(:user) { create(:user) }
  let(:uploader) { described_class.new }

  before do
    described_class.enable_processing = true
    File.open('spec/support/profile_image.png') do |f|
      user.icon = f
      user.save!
    end
  end

  after do
    described_class.enable_processing = false
  end

  context 'thumb' do
    it 'crop' do
      image = Magick::ImageList.new(Rails.root.join('public/user_icon', "thumb_#{user.icon_identifier}"))

      expect(image.columns).to eq image.rows
    end

    it 'resize_to_fit' do
      image = Magick::ImageList.new(Rails.root.join('public/user_icon', "thumb_#{user.icon_identifier}"))

      expect(image.columns).to eq 100
      expect(image.rows).to eq 100
    end
  end
end
