def ftoc(num)
  return (num - 32) * 5/9
end

def ctof(num)
  num = num.to_f
  return (num * 9/5) + 32
end
