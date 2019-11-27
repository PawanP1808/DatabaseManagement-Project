# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
trim = ["premium", "fullsize" ,"compact"]
price = ["100", "200", "300"]

50.times do
    Vehicle.create([{
        license_plate: Faker::Number.number(digits: 6),
        brand: Faker::Vehicle.make,
        model_no: Faker::Vehicle.model,
        v_type: Faker::Vehicle.car_type,
        trim: trim[rand(trim.length)],
        capacity: Faker::Number.number(from: 1, to: 4),
        milage: Faker::Number.number(digits: 3),
        package_price: price[rand(price.length)],
        branch_id: Faker::Number.between(from: 1, to: 40),
        color_id: Faker::Number.between(from: 1, to: 20)
    }])
end