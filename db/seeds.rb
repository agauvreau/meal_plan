exit if !Rails.env.development?

puts "Deleting the data"

Recipe.delete_all
User.delete_all

puts "Creating users"

user = FactoryGirl.create(:user, email:'test@example.com')

puts "Creating recipes"
20.times do
    FactoryGirl.create(:recipe, user: user)
end
