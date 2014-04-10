def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(arr)
  arr.reduce(:+) || 0
end

def multiply(*nums)
  nums.reduce(:*)
end

def power(num1, num2)
  num1 ** num2
end

def factorial(num)
  return 1 if num == 0
  
  return (num..-1).to_a.reduce(:*) if num < 1
  (1..num).to_a.reduce(:*)
end