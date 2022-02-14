# frozen_string_literal: true

require 'pry'
# roman numeral class
class RomanNumerals
  VALUES = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }.freeze

  def self.to_roman(num)
    roman = ''
    VALUES.each do |val, let|
      roman << let * (num / val)
      num = num % val
    end
    roman
  end
end
