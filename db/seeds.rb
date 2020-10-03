require 'json'
require 'open-uri'


puts "SEEDING STARTED..."
puts "PARSING JSON COCKTAIL DATABASE..."
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)

puts "LOADING INGREDIENTS"
ingredients["drinks"].each do |ingredient|
  ing = Ingredient.create(name: ingredient["strIngredient1"])
end

puts "SEEDING COMPLETED"