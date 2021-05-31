# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House1 = House.create(name: "Villa", rank: 4,price: "2000", image: "https://res.cloudinary.com/lidu4394/image/upload/v1621343540/vu-anh-TiVPTYCG_3E-unsplash_1_gqha0y.jpg")
House2 = House.create(name: "Palace", rank: 5,price: "3000", image: "https://res.cloudinary.com/lidu4394/image/upload/v1621343503/terrah-holly-pmhdkgRCbtE-unsplash_wjvpgq.jpg")
House3 = House.create(name: "Apartment", rank: 3,price: "3500", image: "https://res.cloudinary.com/lidu4394/image/upload/v1621517741/digital-marketing-agency-ntwrk-g39p1kDjvSY-unsplash_xqmtzj.jpg")
House4 = House.create(name: "Room", rank: 5,price: "4000", image: "https://res.cloudinary.com/lidu4394/image/upload/v1621517709/webaliser-_TPTXZd9mOo-unsplash_evrcy2.jpg")

User1 = User.create(username: "Lidu", password: "1234567")
User2 = User.create(username: "Lidya", password: "1234567")
User3 = User.create(username: "lidu@gmail.com", password: "lidu43")
