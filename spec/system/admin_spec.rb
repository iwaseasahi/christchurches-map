require 'rails_helper'

feature '管理画面', type: :system do
  scenario '閲覧できる' do
    encoded_login = ['admin:password'].pack('m*')
    page.driver.header('Authorization', "Basic #{encoded_login}")

    visit admin_root_path

    expect(page).to have_current_path admin_root_path
    expect(page).to have_text 'ユーザー'
  end
end
