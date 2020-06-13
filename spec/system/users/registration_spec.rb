require 'rails_helper'

feature 'ユーザー登録', type: :system do
  scenario '閲覧できる' do
    visit root_path

    within(:css, '#mainNav') do
      click_link 'ユーザー登録'
    end

    expect(page).to have_current_path new_user_registration_path
  end

  scenario '登録できる' do
    password = Faker::Internet.password(min_length: min_length = 6, max_length: max_length = 12)

    visit root_path

    within(:css, '#mainNav') do
      click_link 'ユーザー登録'
    end

    fill_in '姓', with: Faker::Name.last_name
    fill_in '名', with: Faker::Name.first_name
    fill_in 'メールアドレス', with: Faker::Internet.safe_email
    fill_in 'パスワード', with: password
    fill_in 'パスワード確認', with: password

    expect do
      perform_enqueued_jobs { click_button '登録' }
    end.to change { ActionMailer::Base.deliveries.size }.by(1)

    expect(page).to have_current_path root_path
    expect(page).to have_text User.last.last_name
    expect(page).to have_text User.last.first_name
  end
end
