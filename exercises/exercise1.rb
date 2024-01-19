class Person
  attr_accessor :first, :last, :age

  def initialize(first, last, age)
    @first = first
    @last = last
    @age = age
  end

  def self.exercise1(arr)
    arr.each do |person|
      puts "Hi #{person.first} #{person.last}! You are #{person.age} years old today."
    end
  end
end
