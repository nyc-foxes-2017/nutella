# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(picture: '/images/CAT.jpg', first_name: "Michael", last_name: "Benson", email: "benson@gmail.com", password: "aaaaaa")
User.create(picture: '/images/CAT.jpg', first_name: "Thomas", last_name: "Chang", email: "chang@gmail.com", password: "aaaaaa")
User.create(picture: '/images/CAT.jpg', first_name: "Peter", last_name: "Menniti", email: "menniti@gmail.com", password: "aaaaaa")

Friendship.create(frienda_id: 1, friendb_id: 2, pending: false)
Friendship.create(frienda_id: 1, friendb_id: 3, pending: true)
Friendship.create(frienda_id: 2, friendb_id: 3, pending: false)
