
def my_min(nums)
  min = nums.first
  index = 0

   nums.each_with_index do |n, idx|
     if n < min
       min   = n
       index = idx
     end
   end

  [min, index]
end
