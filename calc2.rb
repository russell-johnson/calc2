def calc_first
	puts "Enter first number followed by symbol follwed by second number."
	numbers_and_operator = gets.strip
	arr = numbers_and_operator.split(" ")
	puts calculate(arr[0].to_f,arr[1],arr[2].to_f)
	calculate_again
end
def calculate(num1,oper,num2)
	if oper == "+"
	    return num1 + num2
	elsif oper == "-"
		return num1 - num2
	elsif oper == "*"
		return num1 * num2
	elsif oper == "/"
		return num1 / num2
	elsif oper == "**"
		return num1 ** num2
	end
end
def calculate_again
	puts "Would you like to calculate again?"
	puts "Yes) Calculate agian."
	puts "No) Exit program"
	calc_again = gets.strip.downcase
	if calc_again == "yes"
		calc_first
	elsif calc_again == "no"
		exit(0)
	else 
		puts "---YES or NO PLZ!---"
		calculate_again
	end
end
calc_first
