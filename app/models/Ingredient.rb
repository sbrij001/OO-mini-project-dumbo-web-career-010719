class Ingredient
  attr_reader :name
  attr_accessor :recipe,:recipe_ingredient
# Ingredient.all should return all of the ingredient instances
# Ingredient.most_common_allergen should return the ingredient
# instance that the highest number of users are allergic to
  @@all = []
  def initialize(ingredient_name)
    @ingredient_name = ingredient_name
    @@all << self
  end

  def self.all
    @@all
  end

  # Ingredient.most_common_allergen should return the ingredient
  # instance that the highest number of users are allergic to

  def allergens
    Allergen.all.select do |allergen|
      allergen.ingredient == self
    end
  end

  def self.most_common_allergen
    Ingredient.all.max_by {|ingredient| ingredient.allergens.count}
  end

end
