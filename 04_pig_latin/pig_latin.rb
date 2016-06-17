def translate(input_string)

	phrase = input_string.split(" ").map{|string|
		if string.start_with?('a', 'e', 'i' 'o' 'u')
			string << "ay"
		else
			first = ""
			while !(string.start_with?('a','e','i','o','u')) do
				first = first + string[0]

				#If the first letter is q, assume next letter 
				#is u and remove that as well
				if string.start_with?('q')
					first  = first + string[1]
					string = string[1..-1]
				end
				string = string[1..-1]

			end
			string << first << "ay"
		end
	}.join(" ")
	phrase
end


