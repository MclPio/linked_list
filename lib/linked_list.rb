class LinkedList
  attr_accessor :head, :tail

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

  def size
    count = 0
    current_node = @head
    loop do
      break if current_node.nil?

      current_node = current_node.next_node
      count += 1
    end
    count
  end

  def at(index)
    current_index = 0
    current_node = @head
    loop do
      break if index == current_index

      if current_node == @tail
        current_node = 'Out of range'
        break
      end
      current_node = current_node.next_node
      current_index += 1
    end
    current_node
  end

  def pop
    return 'Empty list' if @head.nil?

    current_index = 0
    current_node = @head
    loop do
      if current_node.next_node == @tail
        @tail = current_node
        current_node.next_node = nil
        break
      end
      current_node = current_node.next_node
      current_index += 1
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

my_list = LinkedList.new
my_list.pop
my_list.prepend('bar')
my_list.append(1)
my_list.append(2)
my_list.append(3)
my_list.prepend('foo')
my_list.size
my_list.head
my_list.tail
my_list.at(3)
my_list.pop
p my_list
