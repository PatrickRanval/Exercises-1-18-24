def exercise2(people_hash)
  people_hash.each do |_key, person|
    puts "#{person[:first_name]} #{person[:last_name]} is #{person[:age]} years old."
  end
end
