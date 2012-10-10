require "rubygems"
require "highline/import"
require "yaml"
require "./pantry.rb"

orders = [ ]

class Server
	def initialize
		@my_inventory = DeliveryTruck.new.stock_pantry
		@@sandwich = Array.new
		puts "Welcome to Chez Anis!"
	end



	def take_order
		sandwich_order = Hash.new

		@my_shop = Pantry.ingredients.new
		@food_groups = @my_shop.group_by { |i| i.type }

		@bread_available = @food_groups['bread']
		@meat_available = @food_groups['meat']
		@veggie_available = @food_groups['veggie']
		@condiment_available = @food_groups['condiment']

		say("What do you want your sandwich to be made of?")
		entry[:bread]		= ask("What kind of bread?  ", [@bread_available.values]) do |q|
			q.validate = @bread_available.include? 
			q.responses[:not_valid] = "Sorry we don't have that.  We have #{@bread_available.join(", ")}" + "."
		end

		entry[:meat]		= ask("What kind of meat?  ") do |q|
			q.validate = @meat_available.include? 
			q.responses[:not_valid] = "Sorry we don't have that.  We have #{@meat_available.join(", ")}" + "."
		end

		entry[:veggie]		= ask("What kind of veggies?  ") do |q|
			q.validate = @veggie_available.include? 
			q.responses[:not_valid] = "Sorry we don't have that.  We have #{@veggie_available.join(", ")}" + "."
		end

		entry[:condiment]	= ask("What kind of condiments?  ") do |q|
			q.validate = @condiment_available.include? 
			q.responses[:not_valid] = "Sorry we don't have that.  We have #{@condiment_available.join(", ")}" + "."
		end

		sandwich_order << entry

	end

	def make_sandwich
		puts "yo"
	end
end

ChezAnis = Server.new