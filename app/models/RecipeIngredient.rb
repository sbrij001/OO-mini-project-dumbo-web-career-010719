class RecipeIngredient
  attr_accessor :ingredient, :recipe, :recipe_ingredient
# ________________RecipeIngredient is the join between an ingredient and a recipe.
# This is a has-many-through relationship Build the following methods on the RecipeIngredient class
# ________________RecipeIngredient.all should return all of the RecipeIngredient instances

# ________________RecipeIngredient#ingredient should return the ingredient instance
# ________________RecipeIngredient#recipe should return the recipe instance
  @@all = []
  def initialize(ingredient,recipe)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
  end
end
