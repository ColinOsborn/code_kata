# frozen_string_literal: true

require 'pry'

class Reversed
  # reversed class

  def self.reverse_print(list)
    reversed = []
    list.each do |item|
      reversed << item unless item.nil?
    end
    binding.pry
    reversed.reverse
  end
end
