require "rubygems"
require "highline/import"
require "yaml"
require "./pantry.rb"
require "./server.rb"


@bread_available =  %w(sourdough rye white brown)
@meat_available  =  %w(turkey roastbeef ham salami)
@veggie_available = %w(lettuce tomato pickle sauerkraut cucumber)
@condiment_available = %w(mustard mayo aioli relish horseradish)

@my_inventory = Pantry.new
@bread_available.each {|i| @my_inventory << Ingredient.new(i, :bread) }
@meat_available.each {|i| @my_inventory << Ingredient.new(i, :meat) }
@veggie_available.each {|i| @my_inventory << Ingredient.new(i, :veggie) }
@condiment_available.each {|i| @my_inventory << Ingredient.new(i, :condiment) }

@food_groups = @my_inventory.group_by { |i| i.type }


sandwich_order = [ ]

begin
	entry = Hash.new

	puts "Welcome to Chez Anis!"


	say("What do you want your sandwich to be made of?")
	entry[:bread]		= ask("What kind of bread?  " ) do |q|
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