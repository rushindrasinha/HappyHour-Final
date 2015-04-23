# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Billy Bazooka", email: "a@b.com", password: "123456")

User.create!(name: "Henry Hardwell", email: "b@b.com", password: "123456")


Bar.create(bar_name: "The Misfit", location: "225 Santa Monica Blvd Santa Monica, CA 90401", zip: 90401, day: "Weekdays", time: "1:00 pm - 4:00 pm", user_id: 1)
Bar.create(bar_name: "Aestus", location: "507 Wilshire Blvd
Santa Monica, CA 90401", zip: 90401, day: "Monday", time: "1:00 pm - 4:00 pm", user_id: 1)
Bar.create(bar_name: "Barkowski", location: "2819 Pico Blvd
Santa Monica, CA 90405", zip: 90405, day: "Wednesday, Thursday", time: "4:00 pm - 8:00 pm", user_id: 1)
Bar.create(bar_name: "Big Dean’s Oceanfront Café", location: "1615 Ocean Front Walk Santa Monica, CA 90401", zip: 90401, day: "Monday, Wednesday, Friday", time: "5:00 pm - 7:00 pm", user_id: 2)
Bar.create(bar_name: "Library AleHouse", location: "2911 Main St
Santa Monica, CA 90405", zip: 90405, day: "Thursday", time: "12:00 pm - 8:00 pm", user_id: 2)



Offer.create(item: "Beer", price: 2, description: "5 Beers on tap for $2", bar_id: 1)
Offer.create(item: "Wine", price: 5, description: "Choice of Red or White", bar_id: 1, image: "https://cdn2.iconfinder.com/data/icons/windows-8-metro-style/512/wine_glass-.png")
Offer.create(item: "Shots", price: 5, description: "Choice of Tequila", bar_id: 1, image: "https://cdn2.iconfinder.com/data/icons/drinks-and-beverages-icon-pack/512/22-512.png")
Offer.create(item: "Shots", price: 5, description: "Choice of Vodka", bar_id: 1, image: "https://cdn2.iconfinder.com/data/icons/drinks-and-beverages-icon-pack/512/22-512.png")
Offer.create(item: "Beer", price: 2, description: "5 Beers on tap for $2", bar_id: 1)

Offer.create(item: "Beer", price: 2, description: "5 Beers on tap for $2", bar_id: 2)
Offer.create(item: "Wine", price: 5, description: "Choice of Red or White", bar_id: 2, image: "https://cdn2.iconfinder.com/data/icons/windows-8-metro-style/512/wine_glass-.png")
Offer.create(item: "Shots", price: 5, description: "Choice of Tequila", bar_id: 2, image: "https://cdn2.iconfinder.com/data/icons/drinks-and-beverages-icon-pack/512/22-512.png")
Offer.create(item: "Shots", price: 5, description: "Choice of Vodka", bar_id: 2, image: "https://cdn2.iconfinder.com/data/icons/drinks-and-beverages-icon-pack/512/22-512.png")
Offer.create(item: "Beer", price: 2, description: "5 Beers on tap for $2", bar_id: 2)

Offer.create(item: "Beer", price: 2, description: "5 Beers on tap for $2", bar_id: 3)
Offer.create(item: "Wine", price: 5, description: "Choice of Red or White", bar_id: 3, image: "https://cdn2.iconfinder.com/data/icons/windows-8-metro-style/512/wine_glass-.png")
Offer.create(item: "Shots", price: 5, description: "Choice of Tequila", bar_id: 3, image: "https://cdn2.iconfinder.com/data/icons/drinks-and-beverages-icon-pack/512/22-512.png")
Offer.create(item: "Shots", price: 5, description: "Choice of Vodka", bar_id: 3, image: "https://cdn2.iconfinder.com/data/icons/drinks-and-beverages-icon-pack/512/22-512.png")
Offer.create(item: "Beer", price: 2, description: "5 Beers on tap for $2", bar_id: 3)

Offer.create(item: "Beer", price: 2, description: "5 Beers on tap for $2", bar_id: 4)
Offer.create(item: "Wine", price: 5, description: "Choice of Red or White", bar_id: 4, image: "https://cdn2.iconfinder.com/data/icons/windows-8-metro-style/512/wine_glass-.png")
Offer.create(item: "Shots", price: 5, description: "Choice of Tequila", bar_id: 4, image: "https://cdn2.iconfinder.com/data/icons/drinks-and-beverages-icon-pack/512/22-512.png")
Offer.create(item: "Shots", price: 5, description: "Choice of Vodka", bar_id: 4, image: "https://cdn2.iconfinder.com/data/icons/drinks-and-beverages-icon-pack/512/22-512.png")
Offer.create(item: "Beer", price: 2, description: "5 Beers on tap for $2", bar_id: 4)

Offer.create(item: "Beer", price: 2, description: "5 Beers on tap for $2", bar_id: 5)
Offer.create(item: "Wine", price: 5, description: "Choice of Red or White", bar_id: 5, image: "https://cdn2.iconfinder.com/data/icons/windows-8-metro-style/512/wine_glass-.png")
Offer.create(item: "Shots", price: 5, description: "Choice of Tequila", bar_id: 5, image: "https://cdn2.iconfinder.com/data/icons/drinks-and-beverages-icon-pack/512/22-512.png")
Offer.create(item: "Shots", price: 5, description: "Choice of Vodka", bar_id: 5, image: "https://cdn2.iconfinder.com/data/icons/drinks-and-beverages-icon-pack/512/22-512.png")
Offer.create(item: "Beer", price: 2, description: "5 Beers on tap for $2", bar_id: 5)
