require "./delivery_truck.rb"

class Ingredient
    #Sets up my ingredients
    attr_reader :name, :type
    def initialize(name, type)
        @name = name
        @type = type
    end
end

class Pantry
    attr_accessor :ingredients
    #pull all my ingredients into the pantry and make them an array
    def initialize
        @ingredients = Array.new
    end
    #grab all the different NAMES of the ingredients in the pantry
    def names
        @ingredients.collect do |i|
            i.name
        end
    end 

    def add(ingredient)
        ## add the unique ingredient by name to the pantry
        @ingredients[ingredient.name] = ingredient
    end

    def get(name)
        @ingredients[name]
        #returns object or nil
    end
    
    def contains
        @ingredients.keys
    end
    
end