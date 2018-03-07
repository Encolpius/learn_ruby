def add(num1, num2)
  return num1 + num2
end

def subtract(num1, num2)
  return num1 - num2
end

def sum(arr)
  sum = 0
  arr.each {|x| sum += x }
  return sum
end

def product(nums)
  sum = 1
  nums.each {|x| sum *= x }
  return sum
end

def power(num1, num2)
  return num1 ** num2
end


def factorial(amount)
  total = 1
  num = 1
  if amount == 0 or amount == 1
    return 1
  end

  while num <= amount
    total *= num
    num += 1
  end
  return total
end
