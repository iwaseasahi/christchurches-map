# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :like do
    association :user
    association :church
  end
end
