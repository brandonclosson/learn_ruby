class Timer
  attr_accessor :seconds, :minutes, :hours
  
  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds= (secs)
    @hours = secs / 3600 || 0
    @minutes = (secs - @hours * 3600) / 60 || 0
    @seconds = secs - (@hours * 3600 + @minutes * 60) || 0
  end

  def time_string
    "%s:%s:%s" % [padded(@hours), padded(@minutes), padded(@seconds)]
  end

  def padded(num)
    padded_string = "00" if num == 0
    padded_string = "0" + num.to_s if num < 10
    padded_string = num.to_s if num >= 10
    padded_string
  end
end