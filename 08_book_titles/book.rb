class Book
  def title
    @title
  end

  def title= (title)
    @title = title.capitalize_title
  end
end

class String
  def capitalize_title
    non_capital = %w[a of and the if in an]
    words = self.split(' ')

    words[0].capitalize!
    words.map! do |word|
      non_capital.include?(word) ? word : word.capitalize
    end

    words.join(' ')
  end
end