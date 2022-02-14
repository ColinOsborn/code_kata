# frozen_string_literal: true

require_relative 'reversed'
require 'pry'

RSpec.describe 'reversed link list' do
  # test class

  it 'filters out nil values' do
    empty = [3, nil, 2, nil, 1]
    link = Reversed.reverse_print(empty)
    expect(link).to eq([1, 2, 3])
  end

  it 'returns a large list of values' do
    large = [3, 5, 16, 12, 4, 2, 5, 3, 7, 3, 9, 5, 5, 1, 18, 3, 13]
    link = Reversed.reverse_print(large)
    expect(link).to eq([5, 2, 4, 12, 16, 9, 3, 7, 13, 3, 18, 1, 5])
  end
end
