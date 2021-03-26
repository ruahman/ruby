def bubble_sort array
  n = array.length

  loop do 
    swapped = false
    (n-1).times do |i|

      # swap if i + 1 is bigger
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

a = [8,2,3,8,6,4,1,9,8]
p bubble_sort a
