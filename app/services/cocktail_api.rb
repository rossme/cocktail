require 'net/http'
require 'json'
require 'byebug'

class CocktailApiService
    def self.parsing
        query = 'black'
        url = `https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{query}`
        uri = URI(url)
        response = Net::HTTP.get(uri)
        image = JSON.parse(response)
        
    end
    byebug
end


# query = 'black'
# url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{query}'
# cocktail_search = JSON.parse(open(url).read)
# cocktail_search["drinks"].each do |image|
# img = Cocktail.create(url: image["strDrinkThumb"])
# end

