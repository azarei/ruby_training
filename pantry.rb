# class Bakery
#     def bread_delivery(bread_type)
#         bread_inventory = {"white" => 12, "brown" => 12, "rye" => 12, "sourdough" => 12}
#         bread_available = bread_inventory.has_key?(bread_type)
#         return self
#     end
# end




class Ingredient
    #Sets up my ingredients
    attr_reader :name, :type, :amount
    def initialize(name, type, amount)
        @name = name
        @type = type
        @amount = amount
    end 
end

class Pantry
    #pull all my ingredients into the pantry and make them an array
    def initialize
        @@ingredients = Hash.new
    end
    #grab all the different NAMES of the ingredients in the pantry
    def names
        @@ingredients.collect do |i|
            i.name
        end
    end 
    #grab all the unique TYPES of the ingredients in the pantry
    def types
        types = @@ingredients.collect do |i|
            i.types
        end
        @@types = types.unique
    end

    def add(ingredient)
        ## add the unique ingredient by name to the pantry
        @@ingredients[ingredient.name] = ingredient

        ## make sure we know about that type
        if @@types.key?(ingredient.type) do
            @@types[ingredient.type] = ingredient
        end 
        if ! (@@types.has_key(ingredient.type) do
            @@types[ingredient.type] = Array.new
        end     
        @@types[ingredient.type].push(ingredient)
    end
    def get(name)
        @@ingredients[name]
        #returns object or nil
    end
    def contains
        @@ingredients.keys
    end
    def types(type)
        # return what types of ingredients we have
    end 
end




# class ChezAnis
#     def check_inventory(bread_type, meat_type, veggie_type)
#         complete_inventory = [bread_inventory, meat_inventory, veggie_inventory]

#         bread_available = bread_inventory.has_key?(bread_type)
#         meat_available = meat_inventory.has_key?(meat_type)
#     end

#     def bread_choice(bread_type)
#         # Bakery.bread_delivery('bread_type')

#         if bread_available == true
#             puts "Great choice! #{bread_type} it is!"
#             bread_go = true
#         else
#             puts "Sorry, I don't have that kind of bread. Your choices are " + bread_inventory.keys.join(", ") + "."
#             bread_go = false
#         end
#         return self
#     end

#     def meat_choice(meat_type,slices)
#         case slices
#         when 1
#             puts "then add one slice of #{meat_type}"
#         when nil
#             puts "doesn't look like you wanted any meat"
#         else
#             puts "then add #{slices} slices of #{meat_type}"
#         end

#         return self
#     end
#     def veggie_choice(veggie_type, veggie_amount)
#         if veggie_amount != nil
#             puts "toss in #{veggie_amount} of #{veggie_type}"
#         else
#             puts "toss in some #{veggie_type}"
#         end
#         return self
#     end
#     def condiment_choice(condiment)
#         puts "then we'll top it of with some #{condiment}"
#         return self
#     end


# end #class ChezAnis

# anis = ChezAnis.new