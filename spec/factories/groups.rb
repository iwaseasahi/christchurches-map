# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :group do
    name { Faker::Company.name }
  end
end
