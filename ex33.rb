def prompt()
	print "What's your name?"
	puts ">> "
	return gets.chomp
end

while true
name = prompt()

	if name == "Patrick"
		puts "You got it!"
		Process.exit()
	else
		puts "Wrong!"
	end
end

