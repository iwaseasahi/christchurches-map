CSV.foreach('db/fixtures/csv/churches.csv') do |row|
  next if Church.exists?(id: row[0])

  # NOTE: geocode を更新させないように validation を skip する
  Church.new(
    id: row[0],
    name: row[1],
    group_id: row[2],
    prefecture_id: row[3],
    address: row[4],
    latitude: row[5],
    longitude: row[6],
    tel: row[7],
    fax: row[8],
    email: row[9],
    url: row[10],
    top_image: row[11]
  ).save(validate: false)
end
