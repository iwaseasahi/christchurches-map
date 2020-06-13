require 'rails_helper'

feature 'コメント', type: :system do
  scenario 'ログインしていれば、コメントできる', js: true do
    church = create(:church, :shinjuku_shalom)
    sign_in

    visit church_path(church)

    comment = Faker::Lorem.paragraph

    fill_in 'コメント', with: comment
    click_button '投稿'

    expect(page).to have_current_path church_path(church)
    expect(page).to have_text comment

    edit_comment = Faker::Lorem.paragraph

    within(:css, '.comment_edit_or_delete') do
      click_link '編集'
    end

    fill_in "edit_comment_id_#{Comment.last.id}", with: edit_comment
    click_button '更新'

    expect(page).to have_text edit_comment

    page.accept_confirm do
      within(:css, '.comment_edit_or_delete') { click_link '削除' }
    end

    expect(page).not_to have_text edit_comment
  end
end
