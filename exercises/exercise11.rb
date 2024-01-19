def thirty
  30
end

# this is a meta question right? I mean if you want me to write code that finds the series of keys that finds the value 30 in a horrible nested hash, I will...

def find_address(number, hash, keys = [])
  return keys if hash.values.include?(number)

  hash.each do |key, value|
    current_keys = keys + [key]

    if value.is_a?(Hash)
      result = find_address(number, value, current_keys)
      return result unless result.empty?
    elsif value == number
      return current_keys
    end
  end

  []
end

def print_value(hash, key_signature)
  current_hash = hash

  key_signature.each do |key|
    current_hash = current_hash[key]
  end

  puts "#{key_signature.join('=>')}=>#{current_hash}"
end
