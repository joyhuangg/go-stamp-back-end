# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gong_cha_pic = "https://lh3.googleusercontent.com/qcAoaxHziW6Vx5Mhj-zR2cbpV5m4OlFMzYa60JbXKL2gqBkDbZzW3C_4QhFWbZIAzfg=h300"
stamp_pic = "https://dxjl3qy52c1o9.cloudfront.net/wp-content/2013/11/number-chop.png"
store1 = Store.create(name: "Gong Cha", icon_url: gong_cha_pic, stamp_url:stamp_pic)

poke_pic = "https://pbs.twimg.com/media/Cmc5z6mVMAQaz6e.png"
store2 = Store.create(name: "Poke Bowl",icon_url: poke_pic, stamp_url:stamp_pic)

pasta_pic = "https://ubisafe.org/images/spaghetti-drawing-side-dish-2.png"
store3 = Store.create(name: "Pasta For Life", icon_url: pasta_pic, stamp_url:stamp_pic)

pizza_pic = "http://www.clker.com/cliparts/8/f/9/4/1194984144102684069pizza_4_stagioni_archite_01.svg.hi.png"
store4 = Store.create(name: 'Pizza By The Slice', icon_url: pizza_pic, stamp_url: stamp_pic)

coffee_pic = "https://bluestonelane.com/wp-content/uploads/2014/07/BSL_crown_logo.png"
store5 = Store.create(name: "Bluestone Lane", icon_url: coffee_pic, stamp_url: stamp_pic)

bubble_tea = "http://1.bp.blogspot.com/-IWc9pdAhEQI/Ti-iJCiHIDI/AAAAAAAABxM/ieaM8ERmEWI/s1600/greenteaboba.JPG"
Deal.create(category: "BOGO (buy 1 get 1 free)", background_url: bubble_tea, store_id: 1, max_points:6)
Deal.create(category: "40% Off", store_id: 1, background_url: bubble_tea, max_points:6)

poke_bowl = "https://cdn.dribbble.com/users/1748211/screenshots/4094780/pokebowl.jpg"
Deal.create(category: "BOGO (buy 1 get 1 free)", background_url: poke_bowl, store_id: 2, max_points:6)

pasta = "https://melbournechapter.net/images/kawaii-clipart-pasta-4.png"
Deal.create(category: "Free Appetizer", background_url: pasta, store_id: 3, max_points:6)
Deal.create(category: "Free Topping", background_url: pasta, store_id: 3, max_points:6)

pizza = "https://banner2.kisspng.com/20180807/ezt/kisspng-pizza-pizza-pug-drawing-burrito-cute-kawaii-pug-chibi-food-pizzafreetoedit-5b69bf515e17e5.8063962115336569133854.jpg"
Deal.create(category: "Free Topping", background_url: pizza, store_id: 4, max_points:6)
Deal.create(category: "BOGO (buy 1 get 1 free)", background_url: pizza, store_id: 4, max_points:6)

coffee = "https://banner2.kisspng.com/20180130/tje/kisspng-tea-coffee-drawing-illustration-cute-mugs-jun-5a71056550c139.9855756415173563893308.jpg"
Deal.create(category: "Free Upgrade", background_url: coffee, store_id: 5, max_points:6)
Deal.create(category: "Free Large Drink", background_url: coffee, store_id: 5, max_points:6)
