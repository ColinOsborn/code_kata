require 'pry'

# fizz buzz class
class FizzBuzz
  def self.setup
    true
  end

  # If you wanted to TDD it
  # def self.response(int)
  #   output = []
  #   (1..int).each do |num|
  #     if (num % 15).zero?
  #       output << 'fizzbuzz'
  #     elsif (num % 3).zero?
  #       output << 'fizz'
  #     elsif (num % 5).zero?
  #       output << 'buzz'
  #     else
  #       output << num
  #     end
  #  end
  #   output
  # end

  def self.response(int)
    (1..int).each do |num|
      if (num % 15).zero?
        puts 'fizzbuzz'
      elsif (num % 3).zero?
        puts 'fizz'
      elsif (num % 5).zero?
        puts 'buzz'
      else
        puts num
      end
   end
  end
end

FizzBuzz.response(100)
