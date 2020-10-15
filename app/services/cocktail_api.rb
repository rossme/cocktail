require 'net/http'
require 'json'

class CocktailApiService
    def self.parsing
        query = 'black'
        url = `https://www.thecocktaildb.com/api/json/v1/1/search.php?s=#{query}`
        uri = URI(url)
        response = Net::HTTP.get(uri)
        image = JSON.parse(response)   
    end
end
