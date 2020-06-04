require 'rails_helper'

feature 'ログイン', type: :system do
  scenario '閲覧できる' do
    visit root_path

    within(:css, '#mainNav') do
      click_link 'ログイン'
    end

    expect(page).to have_current_path new_user_session_path
  end

  scenario 'ログインできる' do
    user = create(:user)

    visit root_path

    within(:css, '#mainNav') do
      click_link 'ログイン'
    end

    fill_in 'メールアドレス', with: user.email
    fill_in 'パスワード', with: user.password

    click_button 'ログイン'

    expect(page).to have_current_path root_path
    expect(page).to have_text user.full_name
  end
end
