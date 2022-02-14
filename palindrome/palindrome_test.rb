# frozen_string_literal: true
require 'minitest'
require 'minitest/spec'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'palindrome'
require 'pry'

class PalindromeTest < Minitest::Spec

  def test_a_real_palindrome
    pal = Palindrome.new
    pal.is_palindrome(121)
    assert
  end

  def test_negative_number
    pal = Palindrome.new
    pal.is_palindrome(-121)
    refute
  end
end
