def measure(num = 1, &block)
  start = Time.now
  num.times { yield }
  finish = Time.now
  (finish - start) / num
end