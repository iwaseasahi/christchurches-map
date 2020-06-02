require 'rails_helper'

feature 'いいねRank', type: :system do
  scenario '閲覧できる' do
    church = create(:church)
    user = create(:user)
    create(:like, church: church, user: user)

    visit root_path
    within(:css, '#mainNav') do
      click_link 'いいねRank'
    end

    expect(page).to have_current_path likes_ranking_path
    expect(page).to have_text church.name
    expect(page).to have_text "#{church.likes.count}いいね"
  end
end
