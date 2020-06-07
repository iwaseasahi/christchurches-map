require 'rails_helper'

feature 'ユーザー', type: :system do
  scenario '閲覧できる' do
    sign_in

    within(:css, '#mainNav') do
      click_link @user.full_name
    end

    expect(page).to have_current_path user_path(@user)
  end

  scenario 'アイコンを変更できる', js: true do
    sign_in

    within(:css, '#mainNav') do
      click_link @user.full_name
    end

    page.attach_file('user_icon', 'spec/support/images/profile_image.png', make_visible: true)

    expect { @user.reload }.to change { @user.icon_identifier }
  end
end
