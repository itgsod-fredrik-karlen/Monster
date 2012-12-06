class Monster
	
	def initialize
		@colors = ["red", "blue", "green", "purple"]
		@sizes = ["tiny", "smal", "medium sized", "big", "huge", "gigantic", "gianormus"]
		@scarelevel = ["not at all", "a bit", "pretty scary", "very", "extreamly"]
		@foods = ["lasanga", "meatloaf", "pancakes", "a car", "spagetti"]
		puts "Enter name"
		@name = gets.chomp.capitalize
		@color = @colors[rand(@colors.size)]
		@size = @sizes[rand(@sizes.size)]
		@scary = @scarelevel[rand(@scarelevel.size)]
		@food = @foods[rand(@foods.size)]
	end

	def description
		"#{@name} is a #{@scary} monster who is #{@color} and is a #{@size} monster"
	end

	def menu
		puts "what would you like your monster do now?
		1. eat
		2. sleep
		3. scare people
		4. scare other monsters"
		
		what = gets.chomp
		if what = 1
			"#{@name} is eating eating"
		elsif what = 2
			"sleeping"
			
	end

	
end


monster = Monster.new

puts monster.description