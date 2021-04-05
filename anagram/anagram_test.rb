# frozen_string_literal: true

require 'bundler/inline'
gemfile do
  source 'https://rubygems.org'
  gem 'minitest'
  gem 'pry'
end
require 'minitest'
require 'minitest/spec'
require 'minitest/pride'
require 'minitest/autorun'
# test
class AnagramTest < Minitest::Spec
  describe 'anagram?' do
    it 'returns true when 2 words have all the same letters' do
      assert Anagram.anagram?('iceman', 'cinema')
    end
    it 'ignores capitalization' do
      assert Anagram.anagram?('maps', 'Spam')
    end
    it 'ignores whitespace' do
      assert Anagram.anagram?('Florida', 'fail rod')
    end
    it 'fails when words are not aanagrams' do
      refute Anagram.anagram?('abc', 'xyz')
    end
  end
end
# class
class Anagram
  def self.anagram?(word1, word2)
    chars1 = sanitize(word1)
    chars2 = sanitize(word2)
    clean1 = whitespace(chars1)
    clean2 = whitespace(chars2)
    first = clean1.sort
    second = clean2.sort
    first == second
  end

  def self.sanitize(word)
    word.downcase.strip.split('')
  end

  def self.whitespace(word)
    word.reject { |i| i == ' ' }
  end
end
