CSV.foreach('db/fixtures/csv/groups.csv') do |row|
  Group.find_or_create_by(
    id: row[0],
    name: row[1]
  )
end
