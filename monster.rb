class Monster
	
	def initialize
		@colors = ["red", "blue", "green", "purple", "pink", "orange", "brown", "invisible", "yellow", "white", "black", "peachpuff colored"]
		@sizes = ["microscopic", "tiny", "smal", "medium sized", "big", "huge", "gigantic", "gianormus", "realy, realy gianormus"]
		@scarelevel = ["not at all", "a bit", "pretty", "very", "extreamly"]
		@foods = ["lasanga", "meatloaf", "pancakes", "a car", "spagetti"]
		@hunger_levels = ["dead", "starving","could use some food", "medium hungry", "stuffed and can't eat more", "about to explode"]
		puts "what do you whant to name your monster?"
		@name = gets.chomp.capitalize
		@color = @colors[rand(@colors.size)]
		@size = @sizes[rand(@sizes.size)]
		@scary = @scarelevel[rand(@scarelevel.size)]
		@food = @foods[rand(@foods.size)]
		

	end

	def description
		"#{@name} is a #{@scary} scary monster who is #{@color} and is #{@size}"

	end
	def inc_hunger
		@
	end

	def menu
		what = 0
		until what == 5 do
			sleep 0.5
			puts "#{@name} is #{@hunger}
			what would you like #{@name} to do now?
			1. eat
			2. sleep
			3. scare people
			4. scare other monsters
			5. say goodbye"

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
		sleep 0.5
		puts "Goodbye! :D"
	end

	
end


monster = Monster.new

puts monster.description
puts monster.menu