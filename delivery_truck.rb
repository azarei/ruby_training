class DeliveryTruck
  def stock_pantry
    pantry = Pantry.new

    ingredient1 = Ingredient.new("white", "bread")
    pantry.add(ingredient1)

    ingredient1 = Ingredient.new("brown", "bread")
    pantry.add(ingredient1)

    pantry
  end
end