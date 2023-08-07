task sample_data: :environment do
  p "creating sample data"

   12.times do 
    p Faker::Name.first_name
    u = User.new
   end
  
  p " #{User.count} users have been created"
end
