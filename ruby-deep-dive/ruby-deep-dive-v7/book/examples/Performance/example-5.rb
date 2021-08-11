
def my_min(nums)
  min   = nums.first
  index = 0

   nums.each_with_index do |n, idx|
     if n < min
       min   = n
       index = idx
     end
   end

  [min, index]
end

def my_sort(nums, sorted = [])

  min, index = my_min(nums)

  sorted.push(min)
  nums.delete_at(index)

  if nums.size > 0
    my_sort(nums, sorted)
  else
    sorted
  end
end

my_sort (1..500).to_a.shuffle
