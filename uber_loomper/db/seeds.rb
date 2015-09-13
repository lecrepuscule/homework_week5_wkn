# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Fabricator(:user) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  email {Faker::Internet.email}
  phone {Faker::Number.number(8)}
end

Fabricator(:vehicle) do
  model { "mercedes-benz" }
  licence_plate { Faker::Number.hexadecimal(6) }
  capacity {Faker::Number.between(3,10)}
  available {true}
  status {"active"}
end

Fabricator(:driver) do
  first_name { Faker::Name.first_name }
  last_name { Faker::Name.last_name }
  employee_id {Faker::Number.number(8)}
  address {Faker::Address.street_address}
  available {true}
end


10.times {Fabricate(:vehicle)}
10.times {Fabricate(:driver)}
50.times do 
  Fabricate(:user).journeys.create(
    pickup_location: Faker::Address.street_address,
    destination: Faker::Address.street_address,
    pickup_time: Faker::Time.backward(5, :all),
    arrival_time: Faker::Time.backward(5, :all),
    num_of_passengers: Faker::Number.between(1,8),
    driver: Driver.find(Random.new.rand(1..10)),
    vehicle: Vehicle.find(Random.new.rand(1..10))
  )
end

