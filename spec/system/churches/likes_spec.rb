require 'rails_helper'

feature 'いいね', type: :system do
  scenario 'ログインしていないと、いいねできない', js: true do
    church = create(:church, :shinjuku_shalom)

    visit church_path(church)

    within(:css, '.intro-text') do
      click_link 'いいね'
    end

    expect(page).to have_current_path church_path(church)
    expect(page).to have_text 'この機能を利用するにはユーザー登録が必要です。'
  end

  scenario 'ログインしていれば、いいねできる', js: true do
    church = create(:church, :shinjuku_shalom)
    sign_in

    visit church_path(church)

    within(:css, '.intro-text') do
      click_link 'いいね'
    end

    expect(page).to have_current_path church_path(church)
    expect(page).to have_text 'いいね済み'

    within(:css, '.intro-text') do
      click_link 'いいね済み'
    end

    expect(page).not_to have_text 'いいね済み'
  end
end
