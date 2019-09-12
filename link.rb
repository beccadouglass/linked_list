class LinkedListNode
  attr_accessor :value, :next_node

  # creates a list by creating a head/next node with a value
  # and a next pointer being nil/ default parameter
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

# creates stack
class Stack
  attr_reader :data

  def initialize
      @data = nil
  end

  # Push a value onto the stack creating a new LinkedListNode 
  # and the pointer becomes what @data was previously.
  def push(value)
      @data = LinkedListNode.new(value, @data)
  end

  # Pop an item off the stack it prints @data.value 
  # which is at the top of the stack
  # then it sets the stack to be the next_node thus 
  # removing the top LinkedListNode from the stack
  # Remove the last item that was pushed onto the
  # stack and return the value to the user
  def pop
      @data = @data.next_mode
  end
end

# after creating stack traverse the linked list pushing each
# value onto the stack until the end of the list.
def reverse_list(list)
  stack = Stack.new
  while list != nil
    stack.push(list.value)
    list = list.next_node
  end

 return stack.data
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "----------"

revlist = reverse_list(node3)
print_values(revlist)