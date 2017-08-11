# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
json = JSON.load(open(url))


json['drinks'].each do |ingredient|
  Ingredient.new(name: ingredient['strIngredient1']).save
end

url = "https://images.unsplash.com/photo-1455621481073-d5bc1c40e3cb?ixlib=rb-0.3"
product = Cocktail.new(name: 'Mojito')
product.remote_photo_url = url
product.save

url = "https://images.unsplash.com/photo-1490048807374-acde8ef855cc?ixlib=rb-0.3"
product = Cocktail.new(name: 'Tequila Sunrise')
product.remote_photo_url = url
product.save

url = "https://images.unsplash.com/photo-1444728399417-08d2aa39e6f4?ixlib=rb-0.3"
product = Cocktail.new(name: 'Sunset Fever')
product.remote_photo_url = url
product.save

url = "http://www.1001cocktails.com/magazine/wp-content/uploads/ccc-300x198.png"
product = Cocktail.new(name: 'Weeski Coca')
product.remote_photo_url = url
product.save

url = "https://images.unsplash.com/photo-1500630967344-3b1f546423ce?ixlib=rb-0.3"
product = Cocktail.new(name: 'Caipi')
product.remote_photo_url = url
product.save

url = "https://cde.peru.com/ima/0/0/6/8/5/685235/611x458/lima.jpg"
product = Cocktail.new(name: 'Maracuya')
product.remote_photo_url = url
product.save
