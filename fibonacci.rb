def fibonacci(number)
  return number if number == 0 || number == 1
  return fibonacci(number - 1) + fibonacci(number - 2)
end

puts "Which fibonacci number do you want?"
index = gets.chomp.to_i
puts "The fibonacci number at index #{index} is #{fibonacci(index)}"


