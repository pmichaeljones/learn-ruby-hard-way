def prompt
	print "> "
end

puts "You enter a dark room with two doors. Do you go through door #1 or #2?"

prompt; door = gets.chomp

if door == "1"
	puts "There's giant gorilla looking at you? What do you do?"
	puts "1. Shoot the gorilla."
	puts "2. Feel the gorilla a banana."

	prompt; gorilla = gets.chomp

	if gorilla == "1"
		puts "You're a sick fuck. The gorilla is bullet proof and eats you. Ass."
	elsif gorilla == "2"
		puts "Smart move jackass. The gorilla is allergic to bananas and kills you for trying to hurt him. Ass"
	else
		puts "Ahh, you put #{gorilla} instead of 1 or 2. Smartass!"
	end

elsif door == "2"
	puts "Your lucky day, there's a killer chimpanzee behind this door. What do you do?"
	puts "1. Run away."
	puts "2. Fight him."
	puts "3. Love him."

	prompt; chimp = gets.chomp

	if chimp == "1"
		puts "Chimps are fast runners. You die."
	elsif chimp == "2"
		puts "Chimps are known fighters. You die."
	elsif chimp == "3"
		puts "This chimp is patient 0. You die."
	else
		puts "You typed: #{chimp}. You're stupid and can't read."
	end

else
	puts "Ahh, you think you're funny eh, putting '#{door}' Fucker. Game over."
end

	
	