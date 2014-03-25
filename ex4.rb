cars = 100 #setting the cars variable to 100
space_in_a_car = 4 #setting the space_in_a_car variable to 4
drivers = 30 #setting the drivers variable to 30
passengers = 90 #setting the passengers variable to 90
cars_not_driven = cars - drivers #subtracting 30 from 100
cars_driven = drivers #setting one variable equal to another which is equal to another
carpool_capacity = cars_driven * space_in_a_car #multiplying the open spots in a car by the number of people driving
average_passengers_per_car = passengers / cars_driven #simple division of 90 by 30

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
