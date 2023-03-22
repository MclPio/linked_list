# todo
# LinkedList class which represent the full list
require_relative 'node'

class LinkedList
  attr_accessor :list

  def initialize
    @list = []
  end

  def append(value)
    object = Node.new(value)
    object_value = object.value
    list.push(object)
  end
  
  def prepend(value)
    next_node = list[0].value
    object = Node.new(value, next_node)
    object_value = object.value
    list.unshift(object)
  end

  def size
    list.size
  end

  def head
    list[0]  
  end

  def tail
    list[-1]
  end

  def at(index)
    list[index]
  end
  
  def pop
    list.pop
  end

  def contains?(value)
    array = []
    for i in list
      array << i.value
    end
    array.include?(value)
  end

  def find(value)
    array = []
    for i in list
      array << i.value
    end
    array.find_index(value)
  end

  def to_s
    string = ''
    for i in list
      string += "(#{i.value}) -> "
    end
    string += 'nil'
  end

  def print_list
    array = []
    for i in list
      array << i.value
    end
    p array
  end
end
