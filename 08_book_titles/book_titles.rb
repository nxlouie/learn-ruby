class Book
	attr_reader :title

	def title=(new_title)
		words_not_capitalized = ["a", "an", "the", "and", "in", "of"]
		phrase = new_title.split(" ")
		phrase = [phrase[0].capitalize] + phrase[1..-1].map do |word|
        	if words_not_capitalized.include?(word)
        		word
        	else
        		word.capitalize()
        	end
		end
  		@title = phrase.join(" ")
  	end
 end