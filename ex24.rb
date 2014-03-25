puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabls."

poem =  <<MULTI_LINE_STRING

\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.

MULTI_LINE_STRING

puts "---------------"
puts poem
puts "---------------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

#this method returns three values.
def secret_formula(started)
	jelly_beans = started * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, "peter", crates
end

start_point = 10000
#these three variables are getting set as the 3 return values from the method
#it doesnt matter what their names are. They are matched first to first, and so on.

billy, jilly, cilly = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{billy} beans, #{jilly} jars, and #{cilly} crates."

#here we're just taking the starting point and dividing it by 10. Nothing special.
start_point = start_point / 10

puts "We can also do that this way:"
puts "We'd have %s beans, %s jars, and %s crates." % secret_formula(start_point)
