class Temperature
  def initialize(options = {})
    @f = options[:f]
    @c = options[:c]
  end

  def in_fahrenheit
    return @f if !@f.nil?
    (@c * 1.8) + 32
  end

  def in_celsius
    return @c if !@c.nil?
    (@f - 32) * (5.0/9.0)
  end

  def Temperature.from_celsius(temp)
    Temperature.new(:c => temp)
  end

  def Temperature.from_fahrenheit(temp)
    Temperature.new(:f => temp)
  end
end

class Celsius < Temperature
  def initialize(temp)
    @c = temp
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @f = temp
  end
end