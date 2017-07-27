# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :church do
    name 'サランパン'
    group_id 176
    prefecture_id 13
    address '東京都新宿区百人町2-18-17'
  end

  factory :invalid_church, class: :church do
    name nil
    group_id 176
    prefecture_id 13
    address '東京都新宿区百人町2-18-17'
  end
end
