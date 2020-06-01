# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :comment do
    association :user
    association :church
    comment { Faker::Lorem.word }
  end
end
