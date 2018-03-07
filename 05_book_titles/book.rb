class Book
  attr_accessor :title
  def title
    words = @title.split
    conjunctions = ['a', 'an', 'in', 'the', 'of', 'and']
    words.each do |x|
      if conjunctions.index(x)
        next
      end
      x.capitalize!
    end
    @title = words.join(' ')
    @title[0]=@title[0].capitalize
    return @title
  end
end
