puts "What is your age?"
age = gets.chomp
age = age.to_i	

age_seconds = age * 60 * 60 * 24 * 365

puts "You are #{age_seconds} seconds old."

puts "How old are you in seconds?"

seconds = gets.chomp
seconds = seconds.to_i

new_age = seconds / 365 / 24 / 60 / 60

puts "You are #{new_age} years old."