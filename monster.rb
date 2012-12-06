class Monster
	@colors = ["red", "blue", "green", "purple"]
	def initilize(name, size, sleep, eat, play, cuddle)
		@name = name
		@color = @colors[rand(@colors.size)]
		@size = size
		@sleep = sleep
		@eat = eat
		@play = play
		@cuddle = cuddle
	end

	def name
		@name = name.capitalize
	end



end