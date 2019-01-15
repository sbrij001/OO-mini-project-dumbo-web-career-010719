class RecipeCard
# _________________RecipeCard.all should return all of the RecipeCard instances
# _______________RecipeCard#date should return the date of the entry
# ________________RecipeCard#rating should return the rating (an integer) a user has given their entry
# RecipeCard#user should return the user to which the entry belongs
# RecipeCard#recipe should return the recipe to which the entry belongs
  attr_accessor :rating, :user, :recipe, :date
  attr_reader :recipe_name
  @@all = []

  def initialize(user,recipe_name,date,rating)
    @user = user
    @recipe_name = recipe_name
    @date = date
    @rating = rating
    @@all << self
  end


  def self.all
    @@all
  end
end
