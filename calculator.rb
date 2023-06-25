def calculator
  puts "Welcome to the Calculator App!"

  loop do
    puts "Please select an operation:"
    puts "1. Addition (+)"
    puts "2. Subtraction (-)"
    puts "3. Multiplication (*)"
    puts "4. Division (/)"
    puts "5. Exit"

    choice = gets.chomp.to_i

    case choice
    when 1
      perform_operation("addition")
    when 2
      perform_operation("subtraction")
    when 3
      perform_operation("multiplication")
    when 4
      perform_operation("division")
    when 5
      puts "Thank you for using the Calculator App!"
      break
    else
      puts "Invalid choice. Kindly choose from the above options."
    end
  end
end

def perform_operation(operation)
  puts "Enter the first number:"
  num1 = gets.chomp.to_f

  puts "Enter the second number:"
  num2 = gets.chomp.to_f

  case operation
  when "addition"
    result = num1 + num2
    operator = "+"
  when "subtraction"
    result = num1 - num2
    operator = "-"
  when "multiplication"
    result = num1 * num2
    operator = "*"
  when "division"
    if num2 != 0
      result = num1 / num2
      operator = "/"
    else
      puts "Error: Division by zero is not allowed."
      return
    end
  end

  puts "Result: #{num1} #{operator} #{num2} = #{result}"
end

calculator