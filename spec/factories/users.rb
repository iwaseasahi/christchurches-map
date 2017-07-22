***REMOVED*** Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    ***REMOVED*** Fakerによる自動生成
    last_name { Faker::Name.last_name }
    first_name { Faker::Name.first_name }
    email { Faker::Internet.safe_email('test') }
    password { Faker::Internet.password(min_length = 6, max_length = 12) }
  end

  factory :user_test do
    last_name '岩瀬'
    first_name '旭'
    password 'asahitest'
    sequence(:email) { |n| "eb50113***REMOVED***{n}@yahoo.co.jp" }
  end
end
