# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'netflix_titles.csv'))
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  t = Movie.new
  t.id_csv = row['show_id']
  t.title = row['2']
  t.genre = row['1']
  t.year = row ['7']
  t.country = row['5']
  t.published_at = row['6']
  t.description = row['11']
  t.save
end
