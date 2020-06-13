require 'rails_helper'
require 'carrierwave/test/matchers'

RSpec.describe TopImageUploader do
  include CarrierWave::Test::Matchers

  let!(:church) { create(:church) }
  let(:uploader) { described_class.new }

  before do
    described_class.enable_processing = true
    File.open('spec/support/assets/church_top_image.jpg') do |f|
      church.top_image = f
      church.save!
    end
  end

  after do
    described_class.enable_processing = false
  end

  context 'thumb' do
    it 'resize_to_fit' do
      image = Magick::ImageList.new(Rails.root.join('public/top_image', "thumb_#{church.top_image_identifier}"))

      expect(image.columns).to be <= 800
      expect(image.rows).to be <= 400
    end
  end
end
