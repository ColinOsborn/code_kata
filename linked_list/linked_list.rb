# frozen_string_literal: true

class LinkedList
  attr_accessor :head

  def initialize
    self.head = nil
  end

  def add(value)
    if self.head.nil?
      self.head = Node.new(value, nil)
    else
      last_node = self.head
      until last_node.next_node.nil?
        last_node = last_node.next_node
      end
      last_node.next_node = Node.new(value, nil)
    end
  end

  private

  class Node
    attr_accessor :value, :next_node

    def initialize(value, next_node)
      self.value = value
      self.next_node = next_node
    end
  end
end
