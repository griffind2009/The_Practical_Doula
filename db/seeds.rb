# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Client.destroy_all


Client.create([
  {name: "Amy", chart_type: "basic"}, {name: "Mary", chart_type: "prenatal"}, {name: "Lana", chart_type: "postpartum"}
  ])
