class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

def print_values(list_node)
  if list_node
    puts "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

def reverse_list(list, previous=nil)  
  if list
    new_node = list.next_node
    list.next_node = previous
    reverse_list(new_node, list)
  else
    return previous
  end
end

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)

 


















