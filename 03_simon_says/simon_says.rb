def echo(input_string)
	input_string
end

def shout(input_string)
	input_string.upcase()
end

def repeat(input_string, number = 2)
	((input_string + " ") * (number - 1)) + input_string
end

def start_of_word(input_string, number)
	input_string[0..(number - 1)]
end

def first_word(input_string)
	tokens = input_string.split()
	tokens[0]
end

def titleize(str)
    str.capitalize!  # capitalize the first word in case it is part of the no words array
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") # I replaced the "end" in "end.join(" ") with "}" because it wasn't working in Ruby 2.1.1
  phrase  # returns the phrase with all the excluded words
end
