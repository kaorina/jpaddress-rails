require "csv"

if File.exist?('db/prefecture.csv') == true
  CSV.foreach('db/prefecture.csv').each do |row| # In case of Shift_JIS file, add this option => CSV.foreach(filename, encoding: "Shift_JIS:UTF-8") do |row|
    Prefecture.find_or_create_by(:id => row[0], :name => row[1])
  end
end

if File.exist?('db/city.csv') == true
  CSV.foreach('db/city.csv').each do |row|
    City.find_or_create_by(:id => row[0], :prefecture_id => row[1], :name => row[2])
  end
end

if File.exist?('db/town.csv') == true
  CSV.foreach('db/town.csv').each do |row|
    Town.find_or_create_by(:id => row[0], :city_id => row[1], :name => row[2])
  end
end
