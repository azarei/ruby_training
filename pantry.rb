class Ingredient
    #Sets up my ingredients
    attr_reader :name, :type
    def initialize(name, type)
        @name = name
        @type = type
    end
end

class IngredientList < Array
    def ingredients
        self
    end

    def add(ingredient)
        self << ingredient
    end
end

class Pantry < IngredientList
    require 'set'

    def ingredients
        self.to_set.to_a
    end
    
end