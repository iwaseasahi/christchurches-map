# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryBot.define do
  factory :group do
    name SecureRandom.hex[1...10]
  end
end
