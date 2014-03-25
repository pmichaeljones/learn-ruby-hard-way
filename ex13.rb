#first, second, third = ARGV

#user = ARGV.first

user = gets.chomp()
prompt = ">>>>>"

puts "Hello #{user}, how are you doing today?"
print prompt
feeling_today = gets.chomp()

puts "What is the weather like in your city?"
print prompt
weather_in_city = STDIN.gets.chomp()

puts <<MESSAGE
So, you said that you're feeling #{feeling_today} today and that it
is #{weather_in_city} in your city today. No wonder!
MESSAGE
