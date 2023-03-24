class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
  end

  def prepend(value)
  end
end

class Node
  attr_accessor :next_node, :value

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

p my_list = LinkedList.new
my_list.append(12)
my_list.append('hello')
my_list.append(:poo)
my_list.append(['xd'])
my_list.append({ouchy:'mouchy', trip: 12})
p my_list