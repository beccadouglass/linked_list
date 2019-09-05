#Reverse a linked list using mutation

class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end
# initial argument starts at the head
# store the next node and becomes list for recursion
# then set that list to previous node
# call itself and pass in 2 arguments.  the first argument is storing the next node which becomes our list.
#
  def reverse_list(list, previous=nil)
      next_node = list.next_node
      list.next_node = previous
    if next_node
      reverse_list(next_node, list)
    else
      return list
    end
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
node4 = LinkedListNode.new(87, node3)

print_values(node4)
puts "-----------"
revlist = reverse_list(node4)
print_values(revlist)
    
