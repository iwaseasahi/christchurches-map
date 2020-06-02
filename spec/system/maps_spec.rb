require 'rails_helper'

feature 'マップ検索', type: :system do
  scenario '閲覧できる' do
    visit root_path

    within(:css, '#mainNav') do
      click_link 'マップ検索'
    end

    expect(page).to have_current_path maps_path
  end

  scenario 'トップページから検索できる', js: true do
    church = create(:church, :shinjuku_shalom)

    visit root_path

    fill_in 'q_name_or_address_cont', with: church.name
    click_button 'Search'

    expect(page).to have_current_path search_from_top_maps_path, ignore_query: true
    expect(page).to have_css '#map'

    target_coordinates = Rack::Utils.parse_query(URI(page.first('#map').first('a')['href']).query)
    lat_and_lng = target_coordinates['ll'].split(',')

    expect(lat_and_lng.first.to_f).to be_within(0.1).of(church.latitude)
    expect(lat_and_lng.last.to_f).to be_within(0.1).of(church.longitude)
  end
end
