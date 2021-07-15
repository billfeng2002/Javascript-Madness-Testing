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