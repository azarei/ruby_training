# class Bakery
#     def bread_delivery(bread_type)
#         bread_inventory = {"white" => 12, "brown" => 12, "rye" => 12, "sourdough" => 12}
#         bread_available = bread_inventory.has_key?(bread_type)
#         return self
#     end
# end


# bread_inventory = Pantry.new(:bread => {"white" => 12, "brown" => 12, "rye" => 12, "sourdough" => 12}, :meat => {"salami" => 10, "turkey" => 10, "ham" => 10}, :veggie => {"tomato" => 5, "lettuce" => 5, "pickle" => 5})


class Ingredient
    attr_reader :name, :type
    def initialize(name, type)
        @name = name
        @type = type
    end 
end

class Pantry
    def initialize
        @@ingredients = Hash.new
        @@types = Hash.new
    end
    def add(ingredient)
        ## add the unique ingredient by name to the pantry
        @@ingredients[ingredient.name] = ingredient

        ## make sure we know about that type
        if @@types.key?(ingredient.type) do
            @@types[ingredient.type] = ingredient
        end 
        if != (@@types.has_key(ingredient.type) do
       end     
        @@types[ingredient.type] = ingredient
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