class Calc

	def initialize
	end

	def add(number_1, number_2)
		number_1 + number_2
	end

	def subtract(number_1, number_2)
	  number_1 - number_2
	end

end


class Printer

	def print_answer(answer) 
	  "The Answer is: #{ answer }"
	end

end



printer = Printer.new
calc2 = Calc.new
calc3 = Calc.new

puts printer.print_answer(calc2.add(2, 3))
puts printer.print_answer(calc3.subtract(3, 2))