require 'rails_helper'

feature 'マップ検索', type: :system do
  scenario '閲覧できる' do
    visit root_path

    within(:css, '#mainNav') do
      click_link 'マップ検索'
    end

    expect(page).to have_current_path maps_path
  end
end
