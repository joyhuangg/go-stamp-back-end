# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

store1 = Store.create(name: "Gong Cha")
store2 = Store.create(name: "Pizza by the Slice")
store3 = Store.create(name: "Coco")

Deal.create(category: "BOGO (buy 1 get 1 free)", description: "", store_id: rand(1..3), max_points:6)
Deal.create(category: "40% off", description: "", store_id: rand(1..3), max_points:6)
Deal.create(category: "Free Appetizer", description: "", store_id: rand(1..3), max_points:6)
Deal.create(category: "Free Topping", description: "", store_id: rand(1..3), max_points:6)
Deal.create(category: "Free Large Drink", description: "", store_id: rand(1..3), max_points:6)
