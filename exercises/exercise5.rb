def exercise5(numArr)
  accumulator = 0
  numArr.each do |num|
    accumulator += num
  end
  puts "#{accumulator}"
end

# numArr.sum works also, but is boring; I used it in exercise 6
