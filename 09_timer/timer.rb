class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		seconds_left = seconds

		hours   = seconds_left / 3600
		seconds_left = seconds_left - (3600 * hours)

		minutes = seconds_left / 60
		seconds_left = seconds_left - (60 * minutes)

		padded(hours) + ":" + padded(minutes) + ":" + padded(seconds_left)
	end

	def padded(number)
		if number >= 0 && number < 10
			"0" + number.to_s
		else
			number.to_s
		end
	end
end