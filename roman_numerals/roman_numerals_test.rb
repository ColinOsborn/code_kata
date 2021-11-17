# frozen_string_literal: true
require 'minitest'
require 'minitest/spec'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'roman_numerals'

# test class
class RomanNumeralsTest < Minitest::Spec
  describe 'to_roman' do
    it 'converts 1 to I' do
      assert_equal 'I', RomanNumerals.to_roman(1)
    end
    it 'converts 2 to II' do
      assert_equal 'II', RomanNumerals.to_roman(2)
    end
    it 'converts 3 to III' do
      assert_equal 'III', RomanNumerals.to_roman(3)
    end
    it 'converts 4 to IV' do
      skip
      assert_equal 'IV', RomanNumerals.to_roman(4)
    end
    it 'converts 5 to V' do
      skip
      assert_equal 'V', RomanNumerals.to_roman(5)
    end
    it 'converts 8 to VIII' do
      skip
      assert_equal 'VIII', RomanNumerals.to_roman(8)
    end
    it 'converts 9 to IX' do
      skip
      assert_equal 'IX', RomanNumerals.to_roman(9)
    end
    it 'converts 10 to X' do
      skip
      assert_equal 'X', RomanNumerals.to_roman(10)
    end
  end
end
