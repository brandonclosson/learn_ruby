def translate(sentence)
  vowels = %w[a e i o u]
  words = sentence.split(' ')
  words.map! do |w|
    chars = w.split('')

    until vowels.include?(chars[0]) do
      if chars[0..1].join('') == "qu"
        chars.push(chars.shift(2))
      else
        chars.push(chars.shift)
      end
    end
    
    chars.join('') + "ay"
  end
  words.join(' ')
end