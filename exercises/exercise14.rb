def divisible_by_three(numArr)
  newArr = []
  numArr.each do |num|
    newArr << num if num % 3 == 0
  end
  newArr
end
