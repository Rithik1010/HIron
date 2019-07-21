User.create!(name:  "Ram",
  email: "ram@xyz.com",
  password:              "foobar",
  password_confirmation: "foobar",
  activated: true,
  activated_at: Time.zone.now)

9.times do |n|
name  = Faker::Name.name
email = "example-#{n+1}@xyz.com"
password = "foobar"
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

8.times do
  name  = Faker::Company.name
  content = Faker::Lorem.sentence(30)
  Service.first.partners.create!(partner_name: name, description: content)
end

8.times do
  name  = Faker::Company.name
  content = Faker::Lorem.sentence(30)
  Service.second.partners.create!(partner_name: name, description: content)
end

8.times do
  name  = Faker::Company.name
  content = Faker::Lorem.sentence(30)
  Service.third.partners.create!(partner_name: name, description: content)
end

8.times do
  name  = Faker::Company.name
  content = Faker::Lorem.sentence(30)
  Service.fourth.partners.create!(partner_name: name, description: content)
end


3.times do
  content = Faker::Lorem.sentence(10)
  Feedback.create!(user_id: 5, partner_id: 1, content: content) 
end