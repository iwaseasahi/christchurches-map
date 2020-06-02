# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :user do
    last_name { Faker::Name.last_name }
    first_name { Faker::Name.first_name }
    email { Faker::Internet.safe_email }
    password { Faker::Internet.password(min_length: min_length = 6, max_length: max_length = 12) }
  end
end
