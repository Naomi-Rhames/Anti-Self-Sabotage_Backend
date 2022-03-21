# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

naomi = User.create(email: "test101@gmail.com", bio: "A female who loves affirmation", password: "password123")



first_post = Post.create(message: "I am capable to do the things that are challenging for me", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMTajPc_CUxpskWZVlQtr7Vxx528Ubm8r3Wg&usqp=CAU", user_id: naomi.id)
 
 
# main_user = User.create(email: "me@gmail.com", bio: "Affirmation is all I need", password: "Password1243")