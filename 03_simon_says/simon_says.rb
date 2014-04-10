def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, reps = 2)
  ((string + " ") * reps).strip
end

def start_of_word(string, num_of_chars)
  string[0..num_of_chars-1]
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  little_words = %w[and the or of in to with over]
  title = string.split
  title[0] = title[0].capitalize
  title.map! { |w| little_words.include?(w) ? w : w.capitalize }
  title.join(" ")
end