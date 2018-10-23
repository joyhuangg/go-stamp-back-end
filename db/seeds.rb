# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
gong_cha_pic = "https://pbs.twimg.com/profile_images/1013396217223622656/peBGxfZe_400x400.jpg"
stamp_pic = "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjlgYODx5veAhULmuAKHRjuBhgQjRx6BAgBEAU&url=https%3A%2F%2Fwww.kisspng.com%2Fpng-seal-rubber-stamp-clip-art-vintage-travel-tag-310115%2F&psig=AOvVaw3bHyIdQT6-G_s6s7fqGQDR&ust=1540349444411440"
store1 = Store.create(name: "Gong Cha", icon_url: gong_cha_pic, stamp_url:stamp_pic)

pizza_pic = "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwj_3tWWx5veAhUCmuAKHX-kC6oQjRx6BAgBEAU&url=https%3A%2F%2Fwww.iconfinder.com%2Ficons%2F109416%2Feating_food_pizza_pizza_slice_raw_simple_icon&psig=AOvVaw0NdswOupF2Goy-MSxVG-ty&ust=1540349491377235"
store2 = Store.create(name: "Pizza by the Slice",icon_url: pizza_pic, stamp_url:stamp_pic)


cocos = "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjo9cOux5veAhUwnOAKHe1SAygQjRx6BAgBEAU&url=http%3A%2F%2Fwww.cocofreshdtla.com%2F&psig=AOvVaw0i5r6w4i9HWwPExt7PCh0o&ust=1540349545193708"
store3 = Store.create(name: "Coco", icon_url:cocos, stamp_url:stamp_pic)

Deal.create(category: "BOGO (buy 1 get 1 free)", description: "", store_id: rand(1..3), max_points:6)
Deal.create(category: "40% off", description: "", store_id: rand(1..3), max_points:6)
Deal.create(category: "Free Appetizer", description: "", store_id: rand(1..3), max_points:6)
Deal.create(category: "Free Topping", description: "", store_id: rand(1..3), max_points:6)
Deal.create(category: "Free Large Drink", description: "", store_id: rand(1..3), max_points:6)
