filename = ARGV.first
#setting the first argument after the "ruby ex16.rb" to the filename var
script = $0
#no idea why we set the script to this

#prints to screen
puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "?" #prints question mark and waits for below response
#waiting for the user's input. Enter continues while CTRL C exits.
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'r')
#opens the file that was passed as an argument and opens in the WRITE mode

puts "Truncating the file. Goodbye!"
target.truncate(target.size)
#target is the variable that contains the open file. It will be truncated
# and every piece will be removed since we're truncating the whole size of the item.

puts "Now I'm going to ask you for three lines:"

#these three lines print a statement and then wait for user input set the variable
print "Line 1: "; line1 = STDIN.gets.chomp()
print "Line 2: "; line2 = STDIN.gets.chomp()
print "Line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

#writes line one to target, the now empty file.
target.write("#{line1}\n#{line2}\n#{line3}\n")

puts "And finally, we close it."
target.close()
#closes the file and that's that.

