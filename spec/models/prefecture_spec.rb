require 'rails_helper'

RSpec.describe Prefecture, type: :model do
  describe '***REMOVED***set_position' do
    specify do
      prefecture = create(:prefecture, :tokyo)

      expect(prefecture.set_position[:lat]).to eq prefecture.latitude
      expect(prefecture.set_position[:lng]).to eq prefecture.longitude
      expect(prefecture.set_position[:zoom]).to eq prefecture.zoom_level
    end
  end
end
