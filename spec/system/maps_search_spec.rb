require 'rails_helper'

feature 'マップ検索', type: :system do
  scenario '名前で教会が見つかる', js: true do
    church = create(:church, :shinjuku_shalom)

    visit root_path

    within(:css, '#mainNav') do
      click_link 'マップ検索'
    end

    fill_in 'q_name_cont', with: church.name
    click_button '検索'

    expect(page).to have_current_path maps_search_index_path, ignore_query: true
    expect(page).to have_css '#map'

    target_coordinates = Rack::Utils.parse_query(URI(page.first('#map').first('a')['href']).query)
    lat_and_lng = target_coordinates['ll'].split(',')

    expect(lat_and_lng.first.to_f).to be_within(0.1).of(church.latitude)
    expect(lat_and_lng.last.to_f).to be_within(0.1).of(church.longitude)
  end

  scenario '住所で教会が見つかる', js: true do
    church = create(:church, :shinjuku_shalom)

    visit root_path

    within(:css, '#mainNav') do
      click_link 'マップ検索'
    end

    fill_in 'q_address_cont', with: church.address
    click_button '検索'

    expect(page).to have_current_path maps_search_index_path, ignore_query: true
    expect(page).to have_css '#map'

    target_coordinates = Rack::Utils.parse_query(URI(page.first('#map').first('a')['href']).query)
    lat_and_lng = target_coordinates['ll'].split(',')

    expect(lat_and_lng.first.to_f).to be_within(0.1).of(church.latitude)
    expect(lat_and_lng.last.to_f).to be_within(0.1).of(church.longitude)
  end

  scenario '都道府県で教会が見つかる', js: true do
    church = create(:church, :shinjuku_shalom)

    visit root_path

    within(:css, '#mainNav') do
      click_link 'マップ検索'
    end

    select church.prefecture.name, from: '都道府県'
    click_button '検索'

    expect(page).to have_current_path maps_search_index_path, ignore_query: true
    expect(page).to have_css '#map'

    target_coordinates = Rack::Utils.parse_query(URI(page.first('#map').first('a')['href']).query)
    lat_and_lng = target_coordinates['ll'].split(',')

    expect(lat_and_lng.first.to_f).to be_within(0.1).of(church.latitude)
    expect(lat_and_lng.last.to_f).to be_within(0.1).of(church.longitude)
  end

  scenario '教団教派で教会が見つかる', js: true do
    church = create(:church, :shinjuku_shalom)

    visit root_path

    within(:css, '#mainNav') do
      click_link 'マップ検索'
    end

    select church.group.name, from: '教団教派'
    click_button '検索'

    expect(page).to have_current_path maps_search_index_path, ignore_query: true
    expect(page).to have_css '#map'

    target_coordinates = Rack::Utils.parse_query(URI(page.first('#map').first('a')['href']).query)
    lat_and_lng = target_coordinates['ll'].split(',')

    expect(lat_and_lng.first.to_f).to be_within(0.1).of(church.latitude)
    expect(lat_and_lng.last.to_f).to be_within(0.1).of(church.longitude)
  end

  scenario '空欄で検索した場合、マップ検索にリダイレクトする' do
    visit root_path

    within(:css, '#mainNav') do
      click_link 'マップ検索'
    end

    click_button '検索'

    expect(page).to have_current_path maps_path
  end

  scenario '直接アクセスした場合、マップ検索にリダイレクトする' do
    visit maps_search_index_path

    expect(page).to have_current_path maps_path
  end
end
