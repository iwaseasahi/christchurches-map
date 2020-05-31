# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :prefecture do
    name { '東京都' }
    latitude { 35.68944 }
    longitude { 139.69167 }
    zoom_level { 5 }
  end
end
