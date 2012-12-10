class Monster
	
	def initialize
		@colors = ["red", "blue", "green", "purple", "pink", "orange", "brown", "invisible", "yellow", "white", "black", "peachpuff colored"]
		@sizes = ["microscopic", "tiny", "smal", "medium sized", "big", "huge", "gigantic", "gianormus", "realy, realy gianormus"]
		@scarelevel = ["not at all", "a bit", "pretty", "very", "extreamly"]
		@foods = ["lasanga", "meatloaf", "pancakes", "a car", "spagetti"]
		@hunger_levels = ["dead", "starving","could use some food", "medium hungry", "stuffed and can't eat more", "about to explode"]
		@namerica = ["Americans with shotguns, succeded and survived.", "high Jamaicans, they didn't move a muscle.", "Canadians, succeded but got maplesirap all over it's body."]
		@samerica = ["people from Argentina but they were busy dancing.", "people from Chile, they ran like hell.", "people from Bolivia, succeded and got to burn some drugs.",
		"Brazilians, but they were busy playing football.", "the original inhabitants from Amazonas, #{@name} got a arrow in it's knee."]
		@europe = ["Swedes, but they were ice cold...", "the French, but they didn't understand #{name}s language.", "" ]
		puts "What do you whant to name your monster?"
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
		
	end

	def menu
		todo = 0
		until todo == 5 do
			sleep 6
			#puts "#{@name} is #{@hunger}
			puts "What would you like #{@name} to do now?
			1. eat
			2. sleep
			3. scare people
			4. scare other monsters
			5. say goodbye"

			todo = gets.to_i
			if todo == 1
				puts "#{@name} is eating eating #{@food}"
			elsif todo == 2
				puts "sleeping"
			elsif todo == 3
				todo_scare = 0
				puts "where do you whant to scare people?
				1. North America
				2. South America
				3. Europe
				4. Asia
				5. Africa
				6. Oceania
				7. Antarctica"
				todo_scare = gets.to_i
				if todo_scare == 1
					puts "#{@name} tried to scare #{@namerica[rand(@namerica.size)]}"
				elsif todo_scare == 2
					puts "#{@name} tried to scare #{@samerica[rand(@samerica.size)]}"
				
				end

			elsif todo == 4
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