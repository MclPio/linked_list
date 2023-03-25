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

  def contains?(value)
    current_node = @head
    count = 0
    loop do
      return false if count == 1

      count += 1 if current_node.next_node.nil?

      return true if current_node.value == value

      current_node = current_node.next_node
    end
  end

  def find(value)
    current_node = @head
    idx = 0
    count = 0
    loop do
      return false if count == 1

      count += 1 if current_node.next_node.nil?

      return idx if current_node.value == value

      idx += 1
      current_node = current_node.next_node 
    end
  end

  def to_s
    current_node = @head
    count = 0
    string = ''
    loop do
      return string += ' nil' if count == 1

      string += "( #{current_node.value} ) -> "
      count += 1 if current_node.next_node.nil?
      current_node = current_node.next_node
    end
  end

  def insert_at(value, index)
    current_node = @head
    current_index = 0
    loop do
      if index == current_index
        saved_nodes = current_node
        current_node = Node.new(value, saved_nodes)
        break
      elsif current_index == index - 1
        saved_nodes = current_node.next_node 
        current_node.next_node = Node.new(value, saved_nodes)
        break
      end
      return 'Out of range' if current_node.next_node.nil?

      current_node = current_node.next_node
      current_index += 1
    end
    current_node
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
my_list.append(:boi)
my_list.contains?(:boi)
my_list.contains?('foo')
my_list.contains?(12)
my_list.find(:boi)
my_list.find('foo')
my_list.find(1)
my_list.append([1,2,3])
my_list.prepend({a: 1})
puts my_list.insert_at('insert-value', 0)
puts my_list

