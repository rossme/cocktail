require 'json'
require 'open-uri'

puts "SEEDING STARTED..."
puts "PARSING JSON COCKTAIL DATABASE..."
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)

puts "CREATING INGREDIENTS"
ingredients["drinks"].each do |ingredient|
  ing = Ingredient.create(name: ingredient["strIngredient1"])
  puts "create #{ing.name}"
end
puts "SEEDING COMPLETED"

