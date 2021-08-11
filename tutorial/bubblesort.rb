def bubble_sort(array)
  n = array.length

  loop do
    swap = false

    (n - 1).times do |i|
      next unless array[i] > array[i + 1]

      array[i], array[i + 1] = array[i + 1], array[i]
      swap = true
    end

    break unless swap
  end

  array
end

p bubble_sort([10, 44, 33, 12, 45, 30, 23, 89, 22])
