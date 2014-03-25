#create a mapping of state abbreviations
states = {
	'Oregon' => 'OR',
	'Florida' => 'FL',
	'California' => 'CA',
	'New York' => 'NY',
	'Michigan' => 'MI'
}

#create a basic set of states and some cities in them
cities = {
	'CA' => 'San Francisco',
	'MI' => 'Detroit',
	'FL' => 'Jacksonville'
}

#add some more cities
cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# puts out some cities
puts '-' * 10
puts "NY State has: ", cities['NY']
puts "OR State has: ", cities['OR']

# puts some states
puts '-' * 10
puts "Michigan's abbreviation is:  ", states['Michigan']
puts "Florida's abbreviation is:  ", states['Florida']

# do it by using the state then cities dict
puts '-' * 10
puts "Michigan has: ", cities[states['Michigan']]
puts "Florida has: ", cities[states['Florida']]

#puts every state abbreviation
puts '-' * 10
for state, abbrev in states
	puts "#{state} is abbreviated #{abbrev}."
end

#puts every city in every state
puts '-' * 10
for abbrev, city in cities
	puts "#{abbrev} has the city #{city}."
end

#now do both at the same time
puts '-' * 10
for state, abbrev in states
	puts "#{state} is abbreviated #{abbrev} and has the city #{cities[abbrev]}."
end

puts '-' * 10
#if it's not there, you get nil
state = states['Textas']

if not state
	puts "Sorry, no Texas."
end

# get a city with a default value
city = cities['TX']  || 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"
