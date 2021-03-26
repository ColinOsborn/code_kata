# frozen_string_literal: true

require 'minitest'
require 'minitest/spec'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'fizz_buzz'
require 'pry'
# test class
class FizzBuzzTest < Minitest::Spec
  describe 'basic setup' do
    it 'setup is working' do
      assert FizzBuzz.setup
    end
  end
  describe 'fizz_buzz' do
    it 'returns 1 2 fizz when passed 3 ' do
      assert_equal [1, 2, 'fizz', 4, 'buzz'], FizzBuzz.response(5)
    end
  end
  describe 'fizz_buzz' do
    it 'returns correctly when 10 is passed' do
      correct = [1, 2, 'fizz', 4, 'buzz', 'fizz', 7, 8, 'fizz', 'buzz']
      assert_equal correct, FizzBuzz.response(10)
    end
  end
  describe 'fizz_buzz' do
    it 'returns correctly when 60 is passed' do
      skip
      correct = []
      assert_equal correct, FizzBuzz.response(60)
    end
  end
end
