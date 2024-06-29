# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    num_map = {}
  
    nums.each_with_index do |num, index|
      complement = target - num
  
      if num_map.key?(complement)
        return [num_map[complement], index]
      end
  
      num_map[num] = index
    end
  
    []
  end
  
  puts two_sum([2, 7, 11, 15], 9).inspect
  puts two_sum([5, 7, 9, 14, 16, 44, 22, 11, 12, 4, 1], 26).inspect
  puts two_sum([3, 2, 4], 6).inspect
  puts two_sum([3, 1, 4, 0, 7, 9, 5], 12).inspect
  puts two_sum([3, 3], 6).inspect