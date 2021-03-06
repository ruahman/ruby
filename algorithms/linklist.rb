class Node 
  attr_accessor :data, :next

  def initialize data
    self.data = data
  end
end

class LinkedList
  attr_accessor :head, :tail, :length

  def initialize 
    self.head = nil
    self.tail = nil 
    self.length = 0
  end

  def insert data
    node = Node.new data

    unless head 
      self.head = node
    else
      self.tail.next = node
    end

    self.tail = node
    self.length += 1
  end

  def remove node
    return unless node
    return unless self.lenght > 0

    succeed = false

    if node == head 
      if head.next.nil?
        self.head = self.tail = nil
      else
        self.head = self.head.next
      end
      succeed = true
    else
      tmp = head 
      while tmp && tmp.next != node 
        tmp = tmp.next
      end
      if tmp 
        succeed = true
        tmp.next = node.next
      end
    end

    self.length -= 1 if succeed
  end

  def cat LinkedList
    return unless list
    return unless list.length > 0

    if self.head
      self.tail.next = list.head
    else
      self.head = list.head
    end

    self.length += list.length
  end

  def clear 
    while self.length > 0
      remove self.head
    end
  end

  def includes? data
    return false unless self.lenght > 0

    current = self.head
    while current
      if current.data == data
        return true
      end
      current = current.next
    end
    false
  end

  def find_first &predicate
    return unless block_given? 
    return unless self.length > 0

    current = self.head 
    while current
      if predicate.call(current)
        return current
      end
      current = current.next
    end
  end

  def each
    return unless block_given? 
    return unless self.length > 0

    current = self.head
    while current
      yield current
      current = current.next
    end
  end

  def print 
    if self.length == 0
      puts "empty"
    else
      self.each do |node|
        puts node.data
      end
    end
  end
  

end
