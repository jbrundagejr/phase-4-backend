# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying old data..."

Vinyl.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating Records..."

vinyl1 = Vinyl.create(band_name: "Kanye West",
                      album_title: "My Beautiful Dark Twisted Fantasy",
                      image_url: "https://upload.wikimedia.org/wikipedia/en/f/f0/My_Beautiful_Dark_Twisted_Fantasy.jpg",
                      year_released: 2010,
                      in_production: true)
vinyl2 = Vinyl.create(band_name: "LCD Soundsystem",
                      album_title: "Sound of Silver",
                      image_url: "https://upload.wikimedia.org/wikipedia/en/f/ff/LCD_Soundsystem_-_Sound_of_Silver.jpg",
                      year_released: 2007,
                      in_production: true)
vinyl3 = Vinyl.create(band_name: "Vampire Weekend",
                      album_title: "Vampire Weekend",
                      image_url: "https://upload.wikimedia.org/wikipedia/en/2/27/VampireWeekendCD2.jpg",
                      year_released: 2008,
                      in_production: true)
vinyl4 = Vinyl.create(band_name: "Bon Iver",
                      album_title: "22, A Million",
                      image_url: "https://upload.wikimedia.org/wikipedia/en/6/66/22%2C_A_Million_cover.jpg",
                      year_released: 2016,
                      in_production: true)
vinyl5 = Vinyl.create(band_name: "Titus Andronicus",
                      album_title: "The Monitor",
                      image_url: "https://upload.wikimedia.org/wikipedia/en/6/68/Titus_andronicus_The_Monitor_album_cover.jpg",
                      year_released: 2010,
                      in_production: true)
vinyl6 = Vinyl.create(band_name: "Frank Ocean",
                      album_title: "Blonde",
                      image_url: "https://upload.wikimedia.org/wikipedia/en/a/a0/Blonde_-_Frank_Ocean.jpeg",
                      year_released: 2016,
                      in_production: false)
vinyl7 = Vinyl.create(band_name: "Car Seat Headrest",
                      album_title: "Twin Fantasy (Face to Face)",
                      image_url: "https://upload.wikimedia.org/wikipedia/en/8/81/Twin_fantasy_face_to_face.jpg",
                      year_released: 2018,
                      in_production: true)
vinyl8 = Vinyl.create(band_name: "Fleet Foxes",
                      album_title: "Crack Up",
                      image_url: "https://upload.wikimedia.org/wikipedia/en/b/b6/Crack-Up_-_Fleet_Foxes.jpg",
                      year_released: 2017,
                      in_production: true)
vinyl9 = Vinyl.create(band_name: "Parquet Courts",
                      album_title: "Wide Awake!",
                      image_url: "https://upload.wikimedia.org/wikipedia/en/0/09/Wide_Awake_Parquet_Courts.jpg",
                      year_released: 2018,
                      in_production: true)
vinyl10 = Vinyl.create(band_name: "Deafheaven",
                      album_title: "Sunbather",
                      image_url: "https://upload.wikimedia.org/wikipedia/en/7/74/Deafheaven_-_Sunbather_2013.png",
                      year_released: 2013,
                      in_production: true)
vinyl11 = Vinyl.create(band_name: "Arcade Fire",
                      album_title: "Neon Bible",
                      image_url: "https://images-na.ssl-images-amazon.com/images/I/71TmUFaz-mL._SL1500_.jpg",
                      year_released: 2007,
                      in_production: true)
vinyl12 = Vinyl.create(band_name: "Nirvana",
                      album_title: "In Utero",
                      image_url: "https://img.discogs.com/YPuiDfbDLN4Y367WNalOujR_koo=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1714024-1405896611-9611.jpeg.jpg",
                      year_released: 1993,
                      in_production: true)
vinyl13 = Vinyl.create(band_name: "A Tribe Called Quest",
                      album_title: "Low End Theory",
                      image_url: "http://cdn.shopify.com/s/files/1/1164/2296/products/A_Tribe_Called_Quest_The_Low_End_Theory1_grande.jpg?v=1505461159",
                      year_released: 1991,
                      in_production: false)
vinyl14 = Vinyl.create(band_name: "The Beatles",
                      album_title: "Yesterday and Today",
                      image_url: "http://ednagreen.com/image/cache/numbered_shirts/tone_to_the_bone/beatles-meat-album-d-1000x1000.jpg",
                      year_released: 1966,
                      in_production: false)
vinyl15 = Vinyl.create(band_name: "Beyoncé",
                      album_title: "Lemonade",
                      image_url: "https://images.squarespace-cdn.com/content/v1/5d7ac4467f604857c4e0eb22/1574811264406-LZMDJ7GECDDX65UC2T05/ke17ZwdGBToddI8pDm48kMRyhYDgPk9y7GMUxyVGe-RZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpzEOKU3ynhxGCOkjkiI2jkNnwo4GpKkY3nGgozguHn9FA2PHrUGCg52mo1A4uM7YTw/Ri7x__jJXSrHIdRi.jpg?format=500w",
                      year_released: 2016,
                      in_production: true)
vinyl16 = Vinyl.create(band_name: "Beach House",
                      album_title: "Teen Dream",
                      image_url: "https://d1rgjmn2wmqeif.cloudfront.net/r/b/23301.jpg",
                      year_released: 2010,
                      in_production: true)
vinyl17 = Vinyl.create(band_name: "Neutral Milk Hotel",
                      album_title: "In the Aeroplane Over the Sea",
                      image_url: "https://i1.sndcdn.com/artworks-000100687509-fq3hnp-t500x500.jpg",
                      year_released: 1998,
                      in_production: true)
vinyl18 = Vinyl.create(band_name: "Led Zeppelin",
                      album_title: "III",
                      image_url: "https://img.discogs.com/J7_vWRdDNAYMmN7WqGXerExtKXM=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-438845-1137004440.jpeg.jpg",
                      year_released: 1970,
                      in_production: false)
vinyl19 = Vinyl.create(band_name: "Built to Spill",
                      album_title: "Keep It Like A Secret",
                      image_url: "https://media.pitchfork.com/photos/5929a3ebea9e61561daa4da9/1:1/w_600/5f254a9f.jpeg",
                      year_released: 1999,
                      in_production: true)
vinyl20 = Vinyl.create(band_name: "Broken Social Scene",
                      album_title: "Broken Social Scene",
                      image_url: "https://media.pitchfork.com/photos/5929a3b09d034d5c69bf2eaa/1:1/w_600/e631aed9.jpg",
                      year_released: 2005,
                      in_production: true)

puts "Creating Users..."


user1 = User.create(name: "zach",
                    email: "zachkaiglerfilm@gmail.com",
                    password: "123",
                    image_url: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.6435-9/40026881_10212217107332599_2292497308874440704_n.jpg?_nc_cat=105&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=PkpwED39xuwAX_qL_kx&_nc_ht=scontent-iad3-1.xx&oh=35bde369e7f74c4ac24684615688a2d8&oe=60D6B6D7")
user2 = User.create(name: "jon",
                    email: "jbrundagejr@gmail.com",
                    password: "123",
                    image_url: "https://avatars.githubusercontent.com/u/79774489?v=4")
user3 = User.create(name: "chadkroeger",
                    email: "nickelbackrox@gmail.com",
                    password: "123",
                    image_url: "https://www.thehandbook.com/cdn-cgi/image/width=300,height=300,fit=cover,q=85/https://files.thehandbook.com/uploads/2014/10/Chad-Kroeger.jpg")
user4 = User.create(name: "shrek",
                    email: "swampman@gmail.com",
                    password: "123",
                    image_url: "https://pbs.twimg.com/profile_images/1380159518798188544/CJL-ZJXi.jpg")

puts "Creating Reviews..."


review1 = Review.create(title: "sounds beautiful",
                        content: "love spinning this baby. worth every dime.",
                        rating: 4,
                        user_id: user1.id,
                        vinyl_id: vinyl2.id)
review2 = Review.create(title: "My favorite record",
                        content: "This was the first vinyl I ever bought, and it still sounds great today.",
                        rating: 5,
                        user_id: user4.id,
                        vinyl_id: vinyl15.id)
review3 = Review.create(title: "poor production quality",
                        content: "too many crackles and pops. they definitely went for quantity over quality with this pressing",
                        rating: 2,
                        user_id: user3.id,
                        vinyl_id: vinyl1.id)
review4 = Review.create(title: "pretty okay",
                        content: "not the worst sounding record i've ever spun, that's for sure.",
                        rating: 3,
                        user_id: user2.id,
                        vinyl_id: vinyl20.id)
review5 = Review.create(title: "crisp and clear",
                        content: "picked it up at rough trade and love the sound.",
                        rating: 4,
                        user_id: user1.id,
                        vinyl_id: vinyl17.id)

puts "Done"
