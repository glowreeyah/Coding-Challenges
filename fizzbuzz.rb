1.upto(100) do |i|
  print "Fizz" if a = (i % 3).zero?
  print "Buzz" if b = (i % 5).zero?
  print i unless (a || b)
  puts
end
