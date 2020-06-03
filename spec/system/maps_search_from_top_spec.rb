require 'rails_helper'

feature 'トップページから検索', type: :system do
  scenario '閲覧できる', js: true do
    church = create(:church, :shinjuku_shalom)

    visit root_path

    fill_in 'q_name_or_address_cont', with: church.name
    click_button 'Search'

    expect(page).to have_current_path maps_search_from_top_index_path, ignore_query: true
    expect(page).to have_css '#map'

    target_coordinates = Rack::Utils.parse_query(URI(page.first('#map').first('a')['href']).query)
    lat_and_lng = target_coordinates['ll'].split(',')

    expect(lat_and_lng.first.to_f).to be_within(0.1).of(church.latitude)
    expect(lat_and_lng.last.to_f).to be_within(0.1).of(church.longitude)
  end

  scenario '該当の教会が見つからなかった場合でも閲覧できる' do
    church = build(:church, :shinjuku_shalom)

    visit root_path

    fill_in 'q_name_or_address_cont', with: church.name
    click_button 'Search'

    expect(page).to have_current_path maps_search_from_top_index_path, ignore_query: true
  end

  scenario '空欄で検索した場合、マップ検索にリダイレクトする' do
    visit root_path

    click_button 'Search'

    expect(page).to have_current_path maps_path
  end

  scenario '直接アクセスした場合、マップ検索にリダイレクトする' do
    visit maps_search_from_top_index_path

    expect(page).to have_current_path maps_path
  end
end
