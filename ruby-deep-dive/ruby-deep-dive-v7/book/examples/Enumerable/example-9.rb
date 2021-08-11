
class FileCabinet
  def initialize
    @documents = [1,2,3]
  end

  def size
    @documents.size
  end

  def each
    count = 0

    while count < size
      yield @documents[count]
      count += 1
    end
  end
end

FileCabinet.new.each { |doc| puts doc }
