require 'rails_helper'

feature 'トップページ', type: :system do
  scenario '閲覧できる' do
    visit root_path

    expect(page).to have_current_path root_path
  end
end
