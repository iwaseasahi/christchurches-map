CSV.foreach('db/fixtures/csv/prefectures.csv') do |row|
  Prefecture.find_or_create_by(
    id: row[0],
    name: row[1],
    latitude: row[2],
    longitude: row[3],
    zoom_level: row[4]
  )
end
