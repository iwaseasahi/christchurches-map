require 'rails_helper'

feature '教会', type: :system do
  scenario 'ログインしていなくても、閲覧できる' do
    church = create(:church, :shinjuku_shalom)

    visit church_path(church)

    expect(page).to have_current_path church_path(church)
    expect(page).to have_text church.name
  end

  scenario 'ログインしていれば、編集できる' do
    church = create(:church, :shinjuku_shalom)
    sign_in

    visit church_path(church)
    click_link '編集する'

    expect(page).to have_current_path edit_church_path(church)

    click_button '更新する'

    expect(page).to have_current_path church_path(church)
  end

  scenario 'ログインしていなければ、編集できない', js: true do
    church = create(:church, :shinjuku_shalom)

    visit church_path(church)
    click_link '編集する'

    expect(page).not_to have_current_path edit_church_path(church)
    expect(page).to have_text 'この機能を利用するにはユーザー登録が必要です。'
  end

  scenario 'トップ画像を変更できる', js: true do
    church = create(:church, :shinjuku_shalom)
    sign_in

    visit church_path(church)
    click_link '編集する'

    page.attach_file('church_top_image', 'spec/support/assets/church_top_image.jpg', make_visible: true)

    expect { church.reload }.to change { church.top_image_identifier }

    click_button '更新する'

    expect(page.find('.church-header')['style']).to include church.top_image_identifier
  end
end
