my_name = 'Zed A. Shaw'
my_age = 35 #not a lie
my_height = 74 #inches
my_height_yards = my_height / 36
my_weight = 180 #lbs
my_weight_kilos = my_weight / 2.54
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Brown'

puts "Let's talk about %s." % my_name
puts "He's %d inches or %d yards tall." % [my_height, my_height_yards]
puts "He's %d pounds or %d kilos heavy." % [my_weight, my_weight_kilos]
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]
puts "His teeth are usually %s depending on the coffee." % my_teeth

#this line is tricky, try to get it exactly right

puts "If I add %d, %d, and %d I get %d." % [my_age, my_height, my_weight, my_age + my_height + my_weight]