class Monster
	
	def initialize
		@colors = ["red", "blue", "green", "purple"]
		@sizes = ["tiny", "smal", "medium sized", "big", "huge", "gigantic", "gianormus"]
		@scarelevel = ["not at all", "a bit", "pretty", "very", "extreamly"]
		@foods = ["lasanga", "meatloaf", "pancakes", "a car", "spagetti"]
		puts "what do you whant to name your monster?"
		@name = gets.chomp.capitalize
		@color = @colors[rand(@colors.size)]
		@size = @sizes[rand(@sizes.size)]
		@scary = @scarelevel[rand(@scarelevel.size)]
		@food = @foods[rand(@foods.size)]

	end

	def description
		"#{@name} is a #{@scary} scary monster who is #{@color} and is a #{@size} monster"

	end

	def menu
		loop do
			sleep 2
			puts "what would you like #{@name} to do now?
			1. eat
			2. sleep
			3. scare people
			4. scare other monsters"
			
			what = gets.to_i
			if what == 1
				puts "#{@name} is eating eating #{@food}"
			elsif what == 2
				puts "sleeping"
			elsif what == 3
				puts "scare people"
			elsif what == 4
				puts "scare monsters"
			end
		end
	end

	
end


monster = Monster.new

puts monster.description
puts monster.menu