require "rubygems"
require "highline/import"
require "yaml"
require "./pantry.rb"

orders = [ ]

class Server
	def initialize
		@@sandwich = Array.new
		puts "Welcome to Chez Anis!"
		take_order
	end



	def take_order
		my_sandwich = Pantry.new

		say("\nYou want a sandwich? Sure!")
		my_sandwich.names.each do |ingredient_choice|
			choose do |ingredient_choice|
				while true
			    	ingredient_choice.prompt = "What kind of #{ingredient_choice} would you like?  "
					# ingredient_choice.choice  do say("Awesome, so #{ingredient_choice.choice} #{ingredient_choice}.") end
			    	if !my_shop.names[ingredient_choice].include?(ingredient_choice.choice)
	                	puts("Sorry, we don't have that. We have #{my_shop.ingredients[ingredient_choice].join(", ")}" + ".")
	            	else
	            		break
			    	end
				end
			end
		end
	end

	def make_sandwich
		puts "yo"
	end
end

ChezAnis = Server.new