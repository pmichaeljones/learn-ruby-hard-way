def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheese!"
	puts "You have #{boxes_of_crackers} of crackers!"
	puts "Man, that's enough for a party!"
	puts "Get a blanket!"
	cc = cheese_count
	bc = boxes_of_crackers
end

def do_we_need_wine?(cc, bc)
	if cc < 10 && bc < 20
		puts "No Wine Needed"
	elsif cc > 10 && bc > 21
		puts "Buy some wine!"
	end
end


puts "We can just give the method numbers directly."
cheese_and_crackers(20, 30)

puts "Or, we can use variables from our scripts"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math"
cheese_and_crackers(amount_of_cheese + 10, amount_of_crackers + 1000)

do_we_need_wine?(8, 10)

do_we_need_wine?(11, 23)