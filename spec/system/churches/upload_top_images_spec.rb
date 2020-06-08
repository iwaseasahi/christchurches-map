require 'rails_helper'

feature '教会トップ画像', type: :system do
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

  scenario '許可していない拡張子はアップロードできない', js: true do
    church = create(:church, :shinjuku_shalom)
    sign_in

    visit church_path(church)
    click_link '編集する'

    page.attach_file('church_top_image', 'spec/support/assets/upload_not_allowed.csv', make_visible: true)

    expect(page).to have_text 'トップ画像が変更できませんでした。'
  end
end
