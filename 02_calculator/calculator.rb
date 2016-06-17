def add(term_one, term_two)
	term_one + term_two
end

def subtract(term_one, term_two)
	term_one - term_two
end

def sum(array)
	answer = 0
	answer = array.inject(0, :+)
	answer
end