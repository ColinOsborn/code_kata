# frozen_string_literal: true

require 'pry'
require 'm'
# roman numeral class
class RomanNumerals
  def self.to_roman(num)
    output = []
    while num >= 10
      output << 'X'
      num -= 10
      next
      if num >= 5
        output << 'V'
        num -= 5
      next
      elsif num >= 4
        output << 'IV'
        num -= 4
      next
      elsif num >= 3
        binding.pry
        output << 'I' * num
      else
        "Error, you still have #{num} left."
      end
      output.join('')
    end
  end
end
