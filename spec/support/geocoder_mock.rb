module DisableGeocoder
  def geocoder_default_mock
    Geocoder::Lookup::Test.set_default_stub(
      [
        {
          'coordinates'  => [35.7038796, 139.6982571],
          'address'      => '東京都新宿区百人町2-18-17',
          'state'        => '新宿区',
          'country'      => '日本',
          'country_code' => 'JP'
        }
      ]
    )
  end
end