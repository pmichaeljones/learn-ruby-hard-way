class Song

	def initialize(lyrics)
		@lyrics = lyrics
	end

	def sing_me_a_song()
		for line in @lyrics
			puts line
		end
	end
end

happy_bday = Song.new(["Happy Birthday To me.",
						"You Look so great.",
						"We are so nice."])
bulls_on_parade = Song.new(["They rally around the family",
							"With pockets full of shells."])

happy_bday.sing_me_a_song

bulls_on_parade.sing_me_a_song

 