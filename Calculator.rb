class Calculator

def calculation_type
  puts "Type 1 to add, 2 to subtract, 3 to multiply, or 4 to divide.. "
  operation_type = gets.to_i

  if operation_type == 1 
    "add"
  elsif operation_type == 2
    "subtract"
  elsif operation_type == 3
    "multiply"
  elsif operation_type == 4
    "divide"
  else 
    "error"
  end
end

def calculate_answer(operator, a, b)
  if operator == "add"
    a + b
  elsif operator == "subtract"
   a - b
  elsif operator == "multiply"
    a * b
  elsif operator == "divide"
    a / b
  end
end
end

run_calculator = 1

while run_calculator == 1

  current_calculation = calculation_type()

  if current_calculation == "error"

    puts "Error: Invalid calculation type. Please try again.."  

  else
    puts "What is the first number you would you like to #{current_calculation}: "
    first_number = gets.to_i
    puts "What is the second number you would like to #{current_calculation}: "
    second_number = gets.to_i 

    answer = calculate_answer(current_calculation, first_number, second_number)

    puts "The answer is #{answer}"
    puts "Type 1 to run another calcution or 2 to end "
    run_calculator = gets.to_i
  end
end

