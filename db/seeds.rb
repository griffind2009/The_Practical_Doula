# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.create([
  {name: "Amy"}, {name: "Mary"}, {name: "Lana"}
  ])

Chart.create([
  {chart_type: "basic"}, {chart_type: "background"}, {chart_type: "current"}, {chart_type: "pre-natal"},
  {chart_type: "birth"}, {chart_type: "newborn"}, {chart_type: "postpartum"}
  ])
