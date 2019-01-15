class User
  # ----------------User.all should return all of the user instances
  # _________________User#recipes should return all of the recipes this user has recipe cards for
  # _________________User#add_recipe_card should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
  # _____________-User#declare_allergen should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
  # User#allergens should return all of the ingredients this user is allergic to
  # User#top_three_recipes should return the top three highest rated recipes for this user.
  # User#most_recent_recipe should return the recipe most recently added to the user's cookbook.
  attr_accessor :recipe, :allergen, :recipeCard
  attr_reader :name


  @@all = []
  def initialize(user_name)
    @user_name = user_name
    @@all << self
  end

  # User#recipes should return all of the recipes this user has recipe cards for
  def recipes
    RecipeCard.all.select do |recipe_card|
      recipe_card.user == self
      # RecipeCard.name
    end.map do |recipe_card|
      recipe_card.recipe
    end
  end

  # User#add_recipe_card should accept a recipe instance as an argument,
  # as well as a date and rating, and create a new recipe card for this user and the given recip
  def add_recipe_card(recipe,date,rating)
    RecipeCard.new(self,recipe,date,rating)
  end

  def self.all
    @@all
  end

  #declare_allergen should accept an ingredient instance as an argument,
  # and create a new allergen instance for this user and the given ingredient
  def declare_allergen(ingredient)
    Allergen.new(s,ingredient)
  end

  #User#allergens should return all of the ingredients this user is allergic to

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end.map do |ele|
      ele.allergy_name
    end
  end

  def top_three_recipes
    RecipeCard.all.max_by(3) do |recipe_card|
      recipe_card.rating
    end.map do |recipe_card|
      recipe_card.recipe
    end
  end

  def most_recent_recipe
    most_recent = []
    RecipeCard.all.sort_by do |recipe_card|
      recipe_card.date
    end.map do |recipe_card|
      most_recent << recipe_card.recipe
    end
    most_recent[-1]
  end


end
