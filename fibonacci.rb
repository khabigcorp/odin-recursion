def fibonacci(number)
  return number if number == 0 || number == 1
  return fibonacci(number - 1) + fibonacci(number - 2)
end

puts fibonacci(10)



