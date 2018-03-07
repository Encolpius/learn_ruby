def translate words
  ending = "ay"
  vowels = ['a', 'e', 'i', 'o', 'u']
  fixed = []

  words = words.split(' ')
  words.each do |x|
    if vowels.index(x[0])
     x += ending
     fixed.push(x)
    else
      index = x.index(/[aeio]/)
      x = x.split('')
      consonants = x.slice(0, index)
      x.slice!(0, index)
      x = (x + consonants).join('') + ending
      fixed.push(x)
    end
  end
  return fixed.join(' ')

end
