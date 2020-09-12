class Node
  attr_accessor :value, :next_node
  
  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    # your code here
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
      @tail = new_node
      return
    end 
    @tail.next_node = new_node
    @tail = new_node
      
    current = @head
    while current.next_node.nil? do
      current = current.next_node
    end
    
    current.next_node = new_node
  end

  def get(index)
    # your code here
    current = @head
    i = 0
    while i != index
    current = current.next_node
    i += 1
    end
    current.value
  end
end

list = LinkedList.new

list.add(3)
list.add(5)
puts list.get(0)
# => 5