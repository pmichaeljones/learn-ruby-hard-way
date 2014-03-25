x = "There are #{10} types of people."
#since 10 isnt a variable, it's printed like usual.
binary = "binary"
#setting the binary variable
do_not = "don't"
#setting the do_not variable
y = "Those who know #{binary} and those who #{do_not}."
#here we are nesting the binary and do_not variable inside the y string

puts x
#printing x return value
puts y
#printing y return value

puts "I said: #{x}."
#printing out a string with the x string nested inside.
puts "I also said: '#{y}'."
#printing out a string with the y variable nested and wrapped in single quotes

hilarious = false
#setting a boolean value for a variable
joke_evaluation = "Isn't this joke so funny?! #{hilarious}"
#asking if a joke is funny and printing a boolean false

puts joke_evaluation

w = "This is the left side of..."
e = "a string with a right side."
#concatenating two strings to form one string

puts w + e 