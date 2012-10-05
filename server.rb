require "rubygems"
require "highline/import"
require "yaml"
require_relative "pantry"
require_relative "delivery_truck"

orders = [ ]

class Server
	def initialize
		@@sandwich = Array.new		
	end
end

my_shop = Pantry.new

def sandwich
	say("\nYou want a sandwich? Sure!")
	my_shop.ingredients.each do |ingredient_choice|
		choose do |ingredient_choice|
			while true
		    	ingredient_choice.prompt = "What kind of #{ingredient_choice} would you like?  "
				# ingredient_choice.choice  do say("Awesome, so #{ingredient_choice.choice} #{ingredient_choice}.") end
		    	if !my_shop.ingredients[ingredient_choice].include?(ingredient_choice.choice)
                	puts("Sorry, we don't have that. We have #{my_shop.ingredients[ingredient_choice].join(", ")}" + ".")
            	else
            		break
		    	end
			end
			end
		end
	end
end





# begin
# 	sandwich_order = Hash.new

# 	say("What do you want your sandwich to be made of?")

# 	entry[:bread]		= ask("What kind of bread?  ")
# 	entry[:meat]		= ask("What kind of meat?  ")
# 	entry[:veggie]		= ask("What kind of veggies?  ")
# 	entry[:condiment]	= ask("What kind of condiments?  ")

# 	orders << sandwich_order
# end until agree("Do you want to order another sandwich?  ", false)

# highline gem stuff
# say("\nThis is the new mode (default)...")
# choose do |menu|
#   menu.prompt = "Please choose your favorite programming language?  "

#   menu.choice :ruby do say("Good choice!") end
#   menu.choices(:python, :perl) do say("Not from around here, are you?") end
# end

