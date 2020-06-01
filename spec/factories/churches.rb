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
  end
end
