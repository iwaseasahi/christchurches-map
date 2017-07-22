# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    user_id 1
    church_id 2324
    comment 'テスト'
    created_at Time.zone.now
    updated_at Time.zone.now
  end
end
