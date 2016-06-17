def ftoc(input_temperature)
	(input_temperature - 32) * (5.0/9.0)
end

def ctof(input_temperature)
	input_temperature * (9.0/5.0) + 32
end
