require 'open-uri'

WORD_URL = "http://learncodethehardway.org/words.txt"
WORDS = []

PHRASES = {
	"class ### < ###\nend" => "Make a class named ### that is-a ###.",
	"class ###\n\tdef initialize(@@@)\n\tend\nend" => "class ### has-a intialize that takes @@@ parameters.",
	"class ###\n\tdef ***(@@@)\n\tend\nend" => "class ### has-a method named *** that takes @@@ parameters.",
	"*** = ###.new()" => "Set *** to an instance of class ###.",
	"***.***(@@@)" => "From *** get the *** method, and call it with parameters @@@.",
	"***.*** = '***'" => "From *** get the *** attribute and set it to '***'."
}

PHRASE_FIRST = ARGV[0] == "english"

open(WORD_URL) { |f| 
	f.each_line { |word| WORDS.push(word.chomp)}
}

def craft_names(rand_words, snippet, pattern, caps=false)
	names = snippet.scan(pattern).map do 
		word = rand_words.pop()
		caps ? word.capitalize : word 
	end

	return names * 2
end

def craft_params(rand_words, snippet, pattern)
	names = (0...snippet.scan(pattern).length).map do
		param_count = rand(3) + 1
		params = (0...param_count).map { |x| rand_words.pop()}
		params.join(', ')
	end

	return names * 2
end


def convert(snippet, phrase)
	rand_words = WORDS.sort_by {rand}
	class_names = craft_names(rand_words, snippet, /###/, caps=true)
	other_names = craft_names(rand_words, snippet, /\*\*\*/)
	param_names = craft_names(rand_words, snippet, /@@@/)

	results = []

	for sentence in [snippet, phrase]
		#fake class names, also copies sentence
		result = sentence.gsub(/###/) { |x| class_names.pop }

		#fake other names
		result.gsub!(/\*\*\*/) { |x| other_names.pop }

		#fake parameter lists
		result.gsub!(/@@@/) { |x| param_names.pop }

		results.push(result)
	end

	return results
end

# keep going until they his CTRL + D
loop do
	snippets = PHRASES.keys().sort_by {rand}

	for snippet in snippets
		phrase = PHRASES[snippet]
		question, answer = convert(snippet, phrase)

		if PHRASE_FIRST
			question, answer = answer, question
		end

		print question, "\n\n> "

		exit(0) unless STDIN.gets

		puts "\nANSWER:  %s\n\n" % answer
	end
end



# class: Tell Ruby to make a new kind of thing.
# object: Two meanings: the most basic kind of thing, and any instance of something
# instance: WHat you get when you tell Ruby to create a class.
# def: How you define a method inside a class.
# @: Inside the functions in a class, @ is an operator for variables in the instance/object being accessed.
# inheritance: The concept that one class can inherit traits from another class.
# composition: The concept that a class can be composed of other classes as parts.
# attribute: A property classes have that are from composition and are usually variables.
# is-a: A phrase to say that something inherits from another. As in a Salmon is-a Fish.
# has-a: A phrase to say that something is composed of other things or has a trait, as in a Salmon has-a mouth.

# classX(Y) : "Make a class named X that is-a Y"
# classX(object) def initialize(J) : "class X has-a initialize that takes J parameters"
# classX(object) def M(J) : "class X has-a method named M that takes J parameters."
# foo = X() : "Set foo to an instance of class X."
# foo.M(J) : "From foo get the M function, and call it with parameters."
# foo.K = Q : "From foo get the K attribute and set it to Q."














































