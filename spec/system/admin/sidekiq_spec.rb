require 'rails_helper'

feature 'sidekiq 管理画面', type: :system do
  scenario '閲覧できる' do
    encoded_login = ['sidekiq_admin:password'].pack('m*')
    page.driver.header('Authorization', "Basic #{encoded_login}")

    visit sidekiq_web_path

    expect(page).to have_current_path sidekiq_web_path
    expect(page).to have_text 'Sidekiq'
  end
end
