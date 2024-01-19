require_relative 'exercise1'
require_relative 'exercise2'
require_relative 'exercise3'
require_relative 'exercise4'
require_relative 'exercise5'
require_relative 'exercise6'
require_relative 'exercise7'
require_relative 'exercise8'
require_relative 'exercise9'
require_relative 'exercise10'
require_relative 'exercise11'
require_relative 'exercise12'
require_relative 'exercise13'
require_relative 'exercise14'
require_relative 'exercise15'

class CLI
  def run
    greet
    menu
    while menu != 'exit'
    end
  end

  def greet
    puts "Welcome to Exercise Demo! \nPlease enter a number to produce the output of an exercise:"
  end

  def menu
    list_options
    option = gets.chomp
    choose_option(option)
  end

  def list_options
    options = (1..15).map { |num| "#{num} = Exercise #{num}" }
    puts "#{options.join("\n")}"
  end
end

def choose_option(option)
  case option
  when '1'
    puts "Here's Exercise 1:"
    newArr = [Person.new('judy', 'judilicious', 47),
              Person.new('bill', 'billdiculous', 87),
              Person.new('Exxie', 'Exampleberger', 19)]
    Person.exercise1(newArr)

  when '2'
    puts "Here's Exercise 2:"
    people_hash = {
      person1: { first_name: 'Jhang', last_name: 'Doughgh', age: 33 },
      person2: { first_name: 'Mufasa', last_name: 'Smith', age: 25 },
      person3: { first_name: 'Bob', last_name: 'Perkinsisilov', age: 40 }
    }
    exercise2(people_hash)

  when '3'
    puts "Here's Exercise 3:"
    sentence = 'Hello world'
    exercise3(sentence)
  when '4'
    puts "Here's Exercise 4:"
    exercise4
  when '5'
    puts "Here's Exercise 5:"
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    exercise5(numbers)
  when '6'
    puts "Here's Exercise 6:"
    numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    exercise6(numbers)
  when '7'
    puts "Here's Exercise 7:"
    words = %w[hello what is up dude]
    puts "#{length_finder(words)}"
  when '8'
    puts "Here's Exercise 8:"
    str = 'hello world'
    reverse(str)
  when '9'
    puts "Here's Exercise 9:"
    words = %w[hello what is up dude]
    puts "#{find_longest_word(words)}"
  when '10'
    puts "Here's Exercise 10:"
    high_scores = {
      bronze: 10,
      silver: 20,
      gold: 30
    }
    high(high_scores)
  when '11'
    puts "Here's Exercise 11:"
    result = thirty
    puts "#{result}"
    puts "\nBut just for fun, let's walk a nested hash looking for a specific value:"
    hash = {
      a: {
        b: 30
      },
      c: {
        d: 40
      },
      e: {
        f: {
          g: 50
        }
      }
    }
    key_signature = find_address(30, hash)
    print_value(hash, key_signature)

  when '12'
    puts "Here's Exercise 12:"
    numbers = [1, 2, 3, 4, 5]
    puts "#{double(numbers)}"

  when '13'
    puts "Here's Exercise 13:"
    a = 5
    b = 6
    puts "#{multiply(a, b)}"
  when '14'
    puts "Here's Exercise 14:"
    numbers = [9, 3, 1, 8, 6, 15, 12]
    puts "#{divisible_by_three(numbers)}"
  when '15'
    puts "Here's Exercise 15:"
    a = [1, 2, 3]
    b = [4, 5, 6]
    puts "#{join_arrays(a, b)}"
  when 'clear'
    clear
  when 'exit'
    puts 'Bye'
    exit
  else
    option
  end
  puts "\n\nPlease Select Another Exercise"
end
