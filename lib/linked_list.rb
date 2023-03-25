class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = @head
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = @head
    else
      new_node.next_node = @head
      @head = new_node
    end
  end
end

class Node
  attr_accessor :next_node, :value

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end


my_list = LinkedList.new()
my_list.prepend('bar')
my_list.append(1)
my_list.append(2)
my_list.append(3)
my_list.prepend('foo')
p my_list
