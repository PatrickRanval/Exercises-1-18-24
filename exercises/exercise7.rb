# you're messing up my naming convention with this one
def length_finder(strArr)
  lengthArr = []
  strArr.each do |word|
    lengthArr << word.length
  end
  lengthArr
end
