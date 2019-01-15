require_relative '../config/environment.rb'


user1 = User.new("fuk")
user2 = User.new("mary")
user3 = User.new("kyle")

ingredient1 = Ingredient.new("tomato")
ingredient2 = Ingredient.new("noodles")
ingredient3 = Ingredient.new("mushrooms")
ingredient4 = Ingredient.new("grapefruit")

recipe1 = Recipe.new("Spaghetti")
recipe2 = Recipe.new("Ham Sandwhich")
recipe3 = Recipe.new("Pizza")

recipe_card1 = RecipeCard.new(user1,recipe1,20190105,5)
recipe_card2 = RecipeCard.new(user2,recipe2,20180105,4)
recipe_card3 = RecipeCard.new(user3, recipe3,20170105,3)


recipe_ingredient1 = RecipeIngredient.new(ingredient1,recipe1)
recipe_ingredient2 = RecipeIngredient.new(ingredient2,recipe2)
recipe_ingredient3 = RecipeIngredient.new(ingredient3,recipe1)

allergy1 = Allergen.new(user1,ingredient1)
allergy2 = Allergen.new(user2,ingredient2)
allergy3 = Allergen.new(user3,ingredient3)
allergy3 = Allergen.new(user2,ingredient1)




binding.pry
