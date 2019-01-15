 class Recipe
#------------ Recipe.all should return all of the recipe instances
# Recipe.most_popular should return the recipe instance with
# the highest number of users (the recipe that has the most recipe cards)
# _______________Recipe#users should return the user instances who
# have recipe cards with this recipe
# ___________Recipe#ingredients should return all of the ingredients in this recipe
# Recipe#allergens should return all of the ingredients in this recipe that are allergens
# Recipe#add_ingredients should take an array of ingredient instances as an argument,
# and associate each of those ingredients with this recipe
  attr_reader :name
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end
# Recipe#users should return the user instances who
# have recipe cards with this recipe
  def users
    RecipeCard.all.select do |recipe_card|
      recipe_card.recipe_name == self
    end.map do |recipe_card|
       recipe_card.user
     end
  end

  # all the ingredients in a recipe
  def ingredients
    RecipeIngredient.all.select do |recipe_ingredient|
      recipe_ingredient.recipe == self
    end.map do |recipe_ingredient|
      recipe_ingredient.ingredient
    end
  end

  # return all of the ingredients in this recipe that are allergens
  def allergens
    self.ingredients.each do |ingredient|
      Allergen.all.each do |alergy|
        alergy.ingredient == ingredient
      end
    end
  end

# Recipe#add_ingredients should take an array of ingredient instances as an argument,
# and associate each of those ingredients with this recipe

  def add_ingredients(ingredients_arr)
    ingredients_arr.each do |ingredient|
      RecipeIngredient.new(ingredient,self)
    end
  end


# Recipe.all should return all of the recipe instances
  def self.all
    @@all
  end
# should return the recipe instance with the highest number of users
# (the recipe that has the most recipe cards)
  def self.most_popular

  end


end
