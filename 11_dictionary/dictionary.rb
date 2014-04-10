class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
    @keywords = []
  end

  def add(addition)
    return @entries[addition] = nil if addition.is_a? String
    addition.each { |k, b| @entries[k] = b }
  end

  def keywords
    @entries.keys.sort
  end

  def include?(word)
    keywords.include? word
  end

  def find(word)
    @entries.select { |k, v| k =~ /#{word}/ }
  end

  def printable
    @entries.sort.map { |k, v| "[#{k}] \"#{v}\"\n"}.join("").strip
  end
end