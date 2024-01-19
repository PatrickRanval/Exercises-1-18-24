def high(someHash)
  bar = nil
  winner = nil
  someHash.each do |key, value|
    if !bar
      bar = value
      winner = key
    elsif bar < value
      bar = value
      winner = key
    end
  end
  puts "#{winner}"
end
