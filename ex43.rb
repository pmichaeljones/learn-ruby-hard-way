class Game

	def initialize(start)
		@quips = [
			"You died. You kinda suck at this.",
			"Nice job, you died...jackass.",
			"Such a loser",
			"I have a small puppy that's better at this."
			"This is where I get really angry."
		]
		@start = start
	end

	def prompt()
		print "> "
	end

	def play()
		next_room = @start

		while true
			puts "\n---------"
			room = method(next_room)
			next_room = room.call()
		end
	end

	def death()
		puts @quips[rand(@quips.length())]
		Process.exit
	end

	def central_corridor()
		puts "The Gothans of Planet Percal #25 have invaded your ship and destroyed"
		puts "your entire crew. You are the last surviving member and the last"
		puts "mission is to get the neutron destruct bomb from the Weapons Armory,"
		puts "put it in the bridge, and blow the ship up after getting into an "
		puts "escape pod."
		puts "\n"
		puts "You're running down the central corridor to the weapons armory when,"
		puts "a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costuem,"
		puts "flowing around his hate filled body. He's blocking the door to the"
		puts "Armory and about to pull a weapon and blast you."

		prompt()
		action = gets.chomp()

		if action == "shoot!"
			puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
			puts "His clown costume is flowing and throws off your aim."
			puts "Your laser hits his costume and doesn't do any damage."
			puts "He eats your head."
			return :death
		elsif action == "dodge!"
			puts "Like a world class boxer, you dodge, weave, slip and slide right."
			puts "You get stomped on by the creature."
			puts "You die."
			return :death
		elsif action == "tell a joke"
			puts "He likes your joke. You're a funny guy that knows how to tell a good"
			puts "joke. You'll go far in life."
			return :laser_weapon_armory
		else
			puts "Does not compute!"
			return :central_corridor
		end
	end

	def laser_weapon_armory()
		puts "You get into the room and need to open a bomb hatch."
		puts "The code is 3 numbers long."
		code = "%s%s%s" % [rand(1)+1, rand(1)+1, rand(1)+1]
		print "[keypad]> "
		guess = gets.chomp()
		guesses = 0


		while guess != code and guesses < 10
			puts "BUZZZZD!"
			guesses += 1
			print "[keypad]> "
			guess = gets.chomp()
		end

		if guess == code
			puts "You did it! The door opens and you grab the bomb!"
			return :the_bridge
		else
			puts "You get the combination wrong for the last time."
			puts "The lock melts together."
			puts "Here come the Gothons..."
			return :death
		end
	end

	def the_bridge()
		puts "You get to the bridge and see Gothons. They see you with the bomb."

		prompt()
		action = gets.chomp()

		if action == "throw the bomb"
			puts "You throw the bomp and run away. They shoot you."
			return :death
		elsif action == "slowly place the bomb"
			puts "You inch your way towards the door and get into the pod."
			return :escape_pod
		else
			puts "Does not compute!"
			return :the_bridge
		end
	end

	def escape_pod()
		puts "You run towards the pods and realize that a few might be broken."
		puts "Which pod should you take?"

		good_pod = rand(5) + 1
		print "[pod]> "
		guess = gets.chomp()

		if guess.to_i != good_pod
			puts "You jump into pod #{guess} and hit eject."
			puts "The pod wasnt air-tight and you die."
			return :death
		else
			puts "The pod slides out into space and heads home. You won!"
			Process.exit(0)
		end
	end
end

a_game = Game.new(:central_corridor)
a_game.play()
			





























































































