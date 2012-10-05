require_relative "pantry"

class DeliveryTruck
  def initialize
    ingredient1 = Ingredient.new("white", "bread", 12)
    my_shop.add(ingredient1)
    ingredient1 = Ingredient.new("brown", "bread", 12)
    my_shop.add(ingredient1)
  end
end