require 'pp'

class RPNCalculator
  attr_reader :numbers, :method_symbols

  def initialize
    @numbers = []
    @method_symbols = %w{+ - / *}
  end

  def push(num)
    @numbers.push(num)
  end

  def plus
    @numbers.push(pop + pop)
  end

  def minus
    @numbers.push(-pop + pop) 
  end

  def divide
    @numbers.push(1 / (pop.to_f / pop.to_f))
  end

  def times
    @numbers.push(pop * pop)
  end

  def pop
    num = @numbers.pop
    raise "calculator is empty" if num.nil?
    num
  end  

  def value
    @numbers[-1]
  end

  def tokens(string)
    string.split.map do |n| 
      @method_symbols.include?(n) ? n.to_sym : n.to_i
    end
  end

  def evaluate(string)
    functions = {:+ => :plus, :- => :minus, :/ => :divide, :* => :times}
    tokens(string).each do |t|
      @method_symbols.include?(t.to_s) ? send(functions[t]) : push(t)
    end
    value
  end
end

