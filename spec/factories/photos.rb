# Read about factories at https://github.com/thoughtbot/factory_bot

FactoryBot.define do
  factory :photo do
    association :church

    file_name { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/assets/logo_image.jpg'), 'image/jpeg') }
    sort_of_number { Random.rand(1...10) }
  end
end
