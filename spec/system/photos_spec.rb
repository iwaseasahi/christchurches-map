require 'rails_helper'

feature '教会画像', type: :system do
  scenario '閲覧できる' do
    church = create(:church, :shinjuku_shalom)
    sign_in

    visit church_path(church)
    click_link '編集する'

    click_link 'フォト管理'

    expect(page).to have_current_path church_photos_path(church.id)
  end

  scenario 'ログインしていなければ、アップロードできない' do
    church = create(:church, :shinjuku_shalom)

    visit church_photos_path(church)

    expect(page).to have_current_path new_user_session_path
  end

  scenario 'ログインしていれば、アップロードできる', js: true do
    church = create(:church, :shinjuku_shalom)
    sign_in

    visit church_path(church)
    click_link '編集する'

    click_link 'フォト管理'

    page.attach_file('photo_file_name', 'spec/support/assets/church_photo.png', make_visible: true)

    expect(page).to have_css("img[src*='#{church.photos.first.file_name_identifier}']")
  end

  scenario 'アップロード後に削除できる', js: true do
    church = create(:church, :shinjuku_shalom)
    sign_in

    visit church_path(church)
    click_link '編集する'

    click_link 'フォト管理'

    page.attach_file('photo_file_name', 'spec/support/assets/church_photo.png', make_visible: true)

    page.accept_confirm do
      click_on '削除'
    end

    expect(page).to have_text '削除しました。'
  end

  scenario '許可していない拡張子はアップロードできない', js: true do
    church = create(:church, :shinjuku_shalom)
    sign_in

    visit church_path(church)
    click_link '編集する'

    click_link 'フォト管理'

    page.attach_file('photo_file_name', 'spec/support/assets/upload_not_allowed.csv', make_visible: true)

    expect(page).to have_text '登録できませんでした。'
  end
end
