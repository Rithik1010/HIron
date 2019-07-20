User.create!(name:  "Ram",
  email: "ram@xyz.com",
  password:              "foobar",
  password_confirmation: "foobar",
  activated: true,
  activated_at: Time.zone.now)

9.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@xyz.com"
password = "password"
User.create!(name:  name,
   email: email,
   password:              password,
   password_confirmation: password,
   activated: true,
   activated_at: Time.zone.now)
end

Service.create!(serv_name:  "Laundry")
Service.create!(serv_name:  "Dish Wash")
Service.create!(serv_name:  "Vehicle Wash")
Service.create!(serv_name:  "Electric Repair")

services = Service.order(:created_at).take(4)
8.times do
  name  = Faker::Name.name
  services.each { |service| service.partners.create!(partner_name: name) }
end