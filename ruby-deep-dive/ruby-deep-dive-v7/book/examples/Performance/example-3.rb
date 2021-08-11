
def my_sort(nums, sorted = [])

  min = nums.min

  sorted << min
  nums.delete_if { |n| n == min }

  if nums.size > 0
    my_sort(nums, sorted)
  else
    sorted
  end
end

my_sort (1..500).to_a.shuffle
