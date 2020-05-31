# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :photo do
    association :church
    file_name { SecureRandom.hex[1...10] }
    sort_of_number { Random.rand(1...10) }
  end
end
