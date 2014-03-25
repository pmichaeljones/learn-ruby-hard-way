#this one is like your scripts with argv
def puts_two(*args)
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *args is acutally pointless, we do just do this
def puts_two_again(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this one takes just one argument
def puts_one(arg1)
	puts "arg1: #{arg1}"
end

# this one takes no arguments
def puts_none()
	puts "I got nothin"
end

puts_two("Patrick","Jones")
puts_two_again("James","Franco")
puts_one("First!")
puts_none()


#to call, use or run a method all mean the same thing
#to call, use or run a method all mean the same thing
#to call, use or run a method all mean the same thing
#to call, use or run a method all mean the same thing
