# + plus
# - minus
# / slash
# * asterick
# % percent
# < less-than
# > greater-than
# <= less than or equal to 
# >= greaer than or equal to


# printing out the statment
puts "I will count my chickens:"

#printing out the statemnt and then adding 6 to 25
puts "Hens", (25 + 30 / 5).to_f
puts "Roosters", (100 - 25 * 3 % 4).to_f(4)

#printing out the statement again
puts "I will now count my eggs:"

#doing some long-form mathmatics. Order of operations is important here.
puts (3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6).to_f

puts "Is it true that 3 + 2 < 5 - 7?"
#looking for a boolean response, true or false
puts 3+2 < 5-7

#looking for a boolean response again, after a printed statement that is
puts "What is 3 + 2?", (3 + 2).to_f
puts "What is 5 - 7?", (5 - 7).to_f

#witty humor here.
puts "Oh, what's why it's false."

puts "How about some more?"

#three statements that are all followed by a boolean response
puts "Is is greater?", 5 > 2
puts "Is it greater or equal?", 5 >= -2
puts "Is it less or equal?", 5 <= -2

