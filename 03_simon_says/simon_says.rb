def echo(word)
  return word
end

def shout(word)
  return word.upcase
end

def repeat(word, number = 2)
   ([word] * number).join(" ")
end


def start_of_word(word, y = 1)
  return word.slice(0, y)
end

def first_word(words)
  index = words.index(" ")
  return words.slice(0, index)
end


def titleize(words)
  capitalized = []
  words = words.split(' ')
  words.each do |x|
    if x == 'and' or x == 'or' or x == 'over' or x == 'the'
      capitalized.push(x)
      next
    end
    capitalized.push(x.capitalize)
  end
  capitalized = capitalized.join(' ')
  capitalized[0] = capitalized[0].upcase
  return capitalized
end
