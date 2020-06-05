require 'rails_helper'
require 'carrierwave/test/matchers'

RSpec.describe PhotoUploader do
  include CarrierWave::Test::Matchers

  let!(:church) { create(:church) }
  let(:photo) { build(:photo, church: church) }
  let(:uploader) { described_class.new }

  before do
    described_class.enable_processing = true
    File.open('spec/support/church_photo.png') do |f|
      photo.file_name = f
      photo.save!
    end
  end

  after do
    described_class.enable_processing = false
  end

  context 'thumb' do
    it 'resize_to_fit' do
      image = Magick::ImageList.new(Rails.root.join('public/photo', "thumb_#{photo.file_name_identifier}"))

      expect(image.columns).to be <= 600
      expect(image.rows).to be <= 300
    end
  end
end
