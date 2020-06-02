# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :church do
    association :group
    association :prefecture, factory: [:prefecture, :tokyo]

    name { Faker::Company.name }
    address { Faker::Address.full_address }

    trait :with_info do
      tel { Faker::PhoneNumber.phone_number }
      email { Faker::Internet.email }
      url { Faker::Internet.url }
    end

    trait :shinjuku_shalom do
      name { '新宿シャローム教会' }
      address { '東京都新宿区百人町１丁目２３−２４ アミューズ大久保ビル 2F' }
      postal_code { '169-0073' }
      latitude { 35.6992842 }
      longitude { 139.6952906 }
      tel { '03-3371-7558' }
      url { 'http://shinjuku-shalom.com/' }
    end
  end
end
