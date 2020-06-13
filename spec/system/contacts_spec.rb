require 'rails_helper'

feature 'お問い合わせ', type: :system do
  scenario '閲覧できる' do
    visit root_path
    within(:css, '#mainNav') do
      click_link 'お問い合わせ'
    end

    expect(page).to have_current_path contacts_path
    expect(page).to have_text 'Contact Us'
  end
end
