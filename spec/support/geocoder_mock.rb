module DisableGeocoder
  def geocoder_default_mock
    Geocoder::Lookup::Test.set_default_stub(
      [
        {
          'coordinates'  => [35.6992842, 139.6952906],
          'address'      => '東京都新宿区百人町１丁目２３−２４ アミューズ大久保ビル 2F',
          'state'        => '新宿区',
          'country'      => '日本',
          'country_code' => 'JP'
        }
      ]
    )
  end
end