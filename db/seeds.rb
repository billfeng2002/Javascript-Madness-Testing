# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create(
    [
        {first_name: "John", last_name:"Doe", username: "jdoe", password: "abcdef", email:"johndoe@yahoo.com", age: "50", address:"1232 Campus Drive"},
        {first_name: "Brock", last_name:"Bama", username: "dagoat", password: "abcd", email:"pres@yahoo.com", age: "50", address:"1232 Campus Drive"},
        {first_name: "Joe", last_name:"Mama", username: "joemam", password: "123", email:"whosjoe@yahoo.com", age: "50", address:"1232 Campus Drive"}  
    ]
)

Orchestra.destroy_all
Orchestra.create(name: "Berliner Philharmoniker", conductor: "Kirill Petrenko", year_founded: 1882, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/72/Logo_Berliner_Philharmoniker.svg/594px-Logo_Berliner_Philharmoniker.svg.png")
Orchestra.create(name: "Boston Philharmonic Orchestra", conductor: "Benjamin Zander", year_founded: 1979, image_url: "https://www.benjaminzander.org/wp-content/uploads/2018/01/1_DSC1048-copy.jpg")
Orchestra.create(name: "Helsinki Philharmonic Orchestra", conductor: "Susanna Mälkki", year_founded: 1882, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Helsinki-Philharmonic-1965.jpg/2560px-Helsinki-Philharmonic-1965.jpg")      
Orchestra.create(name: "Iceland Symphony Orchestra", conductor: "Eva Ollikainen", year_founded: 1950, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Iceland_Symphony_Orchestra.svg/2560px-Iceland_Symphony_Orchestra.svg.png") 
Orchestra.create(name: "BBC Philharmonic", conductor: "Omer Meir Wellber", year_founded: 1922, image_url: "https://upload.wikimedia.org/wikipedia/en/d/dd/BBC_Philharmonic_logo.png")   
  


ConcertHall.destroy_all
10.times do
    ConcertHall.create!(location: Faker::Address.city, date_built: rand(1850..2000), name: Faker::Address.city + "Concert Hall")
end


Concert.destroy_all
10.times do
    Concert.create!(orchestra_id: Orchestra.ids.sample, concert_hall_id: ConcertHall.ids.sample, name: Faker::Company.name+"'s Celebration", price: rand(10..200).to_f, time: rand(200).days.ago+100.days, updated_at: Faker::Time.backward(days: 50))
end


Repertoire.destroy_all
20.times do
    Repertoire.create!(concert_id: Concert.ids.sample, name: Faker::Music::Opera.mozart, composer: Faker::Music::Opera.name, duration: rand(20..500))
end  

Repertoire.create!(concert_id: Concert.ids.sample, name: "En Saga", composer: "Sibelius", duration: 20)
        
        


    

