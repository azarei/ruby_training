require "rubygems"
require "highline/import"
require "yaml"
require "colorize"
require "./pantry.rb"
require "./server.rb"
# require 'pp'


@bread_available =  %w(sourdough rye white brown)
@meat_available  =  %w(turkey roastbeef ham salami pepperoni)
@veggie_available = %w(lettuce tomato pickle sauerkraut cucumber)
@condiment_available = %w(mustard mayo aioli relish horseradish salt pepper)

@my_inventory = Pantry.new
@bread_available.each {|i| @my_inventory << Ingredient.new(i, :bread) }
@meat_available.each {|i| @my_inventory << Ingredient.new(i, :meat) }
@veggie_available.each {|i| @my_inventory << Ingredient.new(i, :veggie) }
@condiment_available.each {|i| @my_inventory << Ingredient.new(i, :condiment) }

@food_groups = @my_inventory.group_by { |i| i.type }

sandwich_order = [ ]

begin
	entry = Hash.new

	puts "Welcome to Chez Anis!".colorize( :blue)

	say("Our special today is the Chef's specialty sandwich.  Would you like to try one out? Awesome!")
	entry[:bread]		= ask("So what kind of bread would you like?  " ) do |q|
		q.validate = Proc.new { |q| @bread_available.include? q.to_s}
		q.responses[:not_valid] = "Sorry we're out of that right now.  We have #{@bread_available.join(", ")}" + "."
	end

	entry[:meat]		= ask("What meat do you want on that?  ") do |q|
		q.validate = Proc.new { |q| @meat_available.include? q.to_s}
		q.responses[:not_valid] = "Unfortunately we're out of that too.  However we do have #{@meat_available.join(", ")}" + "."
	end

	entry[:veggie]		= ask("Any veggies?  ") do |q|
		q.validate = Proc.new { |q| @veggie_available.include? q.to_s}
		q.responses[:not_valid] = "Actually we only have #{@veggie_available.join(", ")}" + "."
	end

	entry[:condiment]	= ask("And top that off with?  ") do |q|
		q.validate = Proc.new { |q| @condiment_available.include? q.to_s}
		q.responses[:not_valid] = "Sorry we don't have that.  We have #{@condiment_available.join(", ")}" + "."
	end

	sandwich_order << entry

	puts "Here's your sandwich. Enjoy!"
	puts sandwich_order[0][:bread].colorize( :white)
	puts sandwich_order[0][:condiment].colorize( :yellow)
	puts sandwich_order[0][:veggie].colorize( :green)
	puts sandwich_order[0][:meat].colorize( :red)
	puts sandwich_order[0][:bread].colorize( :white)
end
