require 'rails_helper'

feature 'ユーザー', type: :system do
  scenario '閲覧できる' do
    sign_in
    decorated_user = ActiveDecorator::Decorator.instance.decorate(@user)

    within(:css, '#mainNav') do
      click_link decorated_user.full_name
    end

    expect(page).to have_current_path user_path(@user)
  end

  scenario 'アイコンを変更できる', js: true do
    sign_in
    decorated_user = ActiveDecorator::Decorator.instance.decorate(@user)

    within(:css, '#mainNav') do
      click_link decorated_user.full_name
    end

    page.attach_file('user_icon', 'spec/support/assets/profile_image.png', make_visible: true)

    expect { @user.reload }.to change { @user.icon_identifier }
  end
end
