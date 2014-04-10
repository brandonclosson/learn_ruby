def reverser (&block)
  yield.split.map {|w| w.reverse}.join(" ")
end

def adder(num=1, &block)
  yield + num
end

def repeater(times = 1, &block)
  times.times { yield }
end