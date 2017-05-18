require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredient = JSON.parse(ingredient_serialized)

Ingredient.destroy_all
ingredient["drinks"].each do |drink_hash|
  Ingredient.create(name: drink_hash["strIngredient1"])
  # Ingredient.create!(a['name'], without_protection: true)
end
