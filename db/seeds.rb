# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

naomi = User.create(email: "test101@gmail.com", bio: "A female who loves affirmation", username: "naomi_2",password: "password123", profile_photo: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png" )



first_post = Post.create(message: "I am capable to do the things that are challenging for me", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMTajPc_CUxpskWZVlQtr7Vxx528Ubm8r3Wg&usqp=CAU", user_id: naomi.id)
 
 response = RestClient.get("https://dulce-affirmations-api.herokuapp.com/affirmation/index")
 affirmation_array = JSON.parse(response)
 affirmation_array.each do |t|
    affirmation = Affirmation.create(phrase: t["phrase"])
    affirmation.save
 end

